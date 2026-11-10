import Foundation

/// Zurich ZIX-compatible understandability model with additional input guards.
///
/// The six features and the trained Ridge coefficients come from ZIX v0.2.5
/// (MIT, Statistisches Amt Kanton Zürich). The guards (minimum length, German
/// detection, uncertainty band) are additions of this app.
enum ReadingScorer {
    static let minimumWords = 50
    static let minimumSentences = 3

    /// Scores closer than this to a CEFR band boundary get a neighbouring level.
    static let uncertaintyBand = 0.4

    /// ZIZ band boundaries on the -10…+10 scale, from easiest to hardest.
    static let levelThresholds: [Double] = [4, 2, 0, -2, -4]

    static func evaluate(_ features: TextFeatures) -> Assessment {
        let words = features.words
        let sentenceLengths = features.sentenceWordCounts.filter { $0 > 0 }

        guard !words.isEmpty else { return .placeholder(state: .empty, features: features) }
        guard words.count >= minimumWords, sentenceLengths.count >= minimumSentences else {
            return .placeholder(state: .tooShort, features: features)
        }
        if !features.detectedLanguageIsGerman,
           (features.germanConfidence ?? 0) < 0.45 {
            return .placeholder(state: .notGerman, features: features)
        }

        let vector = zixFeatures(for: features)
        let score = zixScore(for: vector)
        let level = level(forZixScore: score)
        let alternate = alternateLevel(forZixScore: score, level: level)

        let wordCount = words.count
        let sentenceCount = sentenceLengths.count
        let longWordShare = Double(words.filter { normalize($0.surface).count > 6 }.count) / Double(wordCount)

        var insights: [AssessmentInsight] = []
        let wordsPerSentence = vector.sentenceLengthMean
        if wordsPerSentence >= 22 { insights.append(.longSentences) }
        else if wordsPerSentence <= 11 { insights.append(.shortSentences) }
        if longWordShare >= 0.15 { insights.append(.manyLongWords) }
        if vector.vocabularyB1 < 0.45 { insights.append(.limitedVocabulary) }
        else if vector.vocabularyB1 >= 0.85 { insights.append(.commonVocabulary) }
        if insights.isEmpty { insights.append(.mixedStructure) }

        return Assessment(
            state: .ready,
            level: level,
            alternateLevel: alternate,
            zixScore: score,
            wordCount: wordCount,
            sentenceCount: sentenceCount,
            wordsPerSentence: wordsPerSentence,
            longWordShare: longWordShare,
            vocabularyCoverage: vector.vocabularyB1,
            commonWordScore: vector.commonWordScore,
            insights: insights,
            challengingWords: challengingWords(in: words),
            features: vector
        )
    }

    // MARK: - Features

    static func zixFeatures(for features: TextFeatures) -> ZixFeatureVector {
        let words = features.words
        let sentenceCount = max(1, features.sentenceWordCounts.filter { $0 > 0 }.count)
        let wordCount = max(1, words.count)

        var a1 = 0
        var a2 = 0
        var b1 = 0
        var wordScoreSum = 0.0

        for word in words {
            let lemma = GermanLemma.lemma(for: word.surface, taggerLemma: word.lemma)
            if ZixModelData.vocabularyA1.contains(lemma) {
                a1 += 1
                a2 += 1
                b1 += 1
            } else if ZixModelData.vocabularyA2.contains(lemma) {
                a2 += 1
                b1 += 1
            } else if ZixModelData.vocabularyB1.contains(lemma) {
                b1 += 1
            }
            wordScoreSum += ZixModelData.wordScores[lemma] ?? 0
        }

        let longWords = words.filter { normalize($0.surface).count > 6 }.count

        return ZixFeatureVector(
            sentenceLengthMean: Double(words.count) / Double(sentenceCount),
            rix: Double(longWords) / Double(sentenceCount),
            vocabularyA1: Double(a1) / Double(wordCount),
            vocabularyA2: Double(a2) / Double(wordCount),
            vocabularyB1: Double(b1) / Double(wordCount),
            commonWordScore: wordScoreSum / Double(wordCount) / 1000
        )
    }

    static func standardized(_ vector: ZixFeatureVector) -> [Double] {
        zip(vector.values, zip(ZixModelData.featureMeans, ZixModelData.featureScales))
            .map { value, parameters in (value - parameters.0) / parameters.1 }
    }

    /// Ridge prediction of the training target (text difficulty).
    static func prediction(for vector: ZixFeatureVector) -> Double {
        let z = zip(standardized(vector), ZixModelData.coefficients)
            .reduce(ZixModelData.intercept) { total, pair in total + pair.0 * pair.1 }
        return z
    }

    /// Understandability score: positive is simple, negative is difficult.
    static func zixScore(for vector: ZixFeatureVector) -> Double {
        let understandability = 1 - prediction(for: vector)
        return min(10, max(-10, understandability * 2 + 5.5))
    }

    // MARK: - Levels

    static func level(forZixScore score: Double) -> CEFRLevel {
        switch score {
        case 4...: .a1
        case 2..<4: .a2
        case 0..<2: .b1
        case (-2)..<0: .b2
        case (-4)..<(-2): .c1
        default: .c2
        }
    }

    static func alternateLevel(forZixScore score: Double, level: CEFRLevel? = nil) -> CEFRLevel? {
        guard let nearest = levelThresholds.min(by: { abs(score - $0) < abs(score - $1) }),
              abs(score - nearest) <= uncertaintyBand
        else { return nil }

        let current = level ?? self.level(forZixScore: score)
        guard let index = CEFRLevel.allCases.firstIndex(of: current) else { return nil }
        let neighbour = score >= nearest ? index + 1 : index - 1
        guard CEFRLevel.allCases.indices.contains(neighbour) else { return nil }
        return CEFRLevel.allCases[neighbour]
    }

    // MARK: - Words

    /// Lowercases and folds `ß` to `ss`, matching the Swiss spelling used by the ZIX lists.
    static func normalize(_ token: String) -> String {
        GermanLemma.normalize(token)
    }

    private static func challengingWords(in words: [WordObservation]) -> [String] {
        let candidates = Set(words.compactMap { word -> String? in
            let normalized = GermanLemma.lemma(for: word.surface, taggerLemma: word.lemma)
            guard normalized.count >= 8,
                  !ZixModelData.vocabularyB1.contains(normalized),
                  !ZixModelData.vocabularyA2.contains(normalized),
                  !ZixModelData.vocabularyA1.contains(normalized),
                  normalized.unicodeScalars.contains(where: { CharacterSet.letters.contains($0) })
            else { return nil }
            return normalized
        })
        return Array(
            candidates
                .sorted { lhs, rhs in
                    lhs.count == rhs.count ? lhs < rhs : lhs.count > rhs.count
                }
                .prefix(8)
        )
    }
}
