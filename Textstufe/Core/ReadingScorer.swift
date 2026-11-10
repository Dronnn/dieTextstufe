import Foundation

/// Conservative, explainable offline heuristic — NOT the Zurich ZIX model.
/// The current coefficients are hand tuned and have not been empirically validated.
enum ReadingScorer {
    static let minimumWords = 50
    static let minimumSentences = 3

    static func evaluate(_ features: TextFeatures) -> Assessment {
        let words = features.words
        let counts = features.sentenceWordCounts.filter { $0 > 0 }

        guard !words.isEmpty else { return .placeholder(state: .empty, features: features) }
        guard words.count >= minimumWords, counts.count >= minimumSentences else {
            return .placeholder(state: .tooShort, features: features)
        }
        if !features.detectedLanguageIsGerman,
           (features.germanConfidence ?? 0) < 0.45 {
            return .placeholder(state: .notGerman, features: features)
        }

        let wordCount = words.count
        let sentenceCount = counts.count
        let averageLength = Double(wordCount) / Double(sentenceCount)
        let longShare = Double(words.filter { GermanLexicon.normalize($0.surface).count >= 12 }.count) / Double(wordCount)

        let ranks = words.map { GermanLexicon.rank(of: $0) }
        let knownCount = ranks.compactMap { $0 }.count
        let knownShare = Double(knownCount) / Double(wordCount)
        let estimatedWordDifficulty = zip(words, ranks).reduce(0.0) { total, pair in
            let (word, rank) = pair
            if let rank { return total + Double(rank) }
            // Out-of-vocabulary does NOT automatically mean advanced.
            let length = GermanLexicon.normalize(word.surface).count
            let fallback = length <= 5 ? 1.8 : length <= 8 ? 2.5 : length <= 11 ? 3.1 : 3.7
            return total + fallback
        } / Double(wordCount)

        let sentenceDifficulty = min(5.8, 1 + max(0, averageLength - 7) * 0.13)
        let markers = words.filter {
            GermanLexicon.clauseMarkers.contains(GermanLexicon.normalize($0.lemma ?? $0.surface))
        }.count
        let markerAdjustment = min(0.50, Double(markers) / Double(sentenceCount) * 0.13)
        let lengthAdjustment = min(0.55, longShare * 1.8)
        let rawScore = estimatedWordDifficulty * 0.62
            + sentenceDifficulty * 0.38 + markerAdjustment + lengthAdjustment
        let score = min(6, max(1, rawScore))

        let level: CEFRLevel
        switch score {
        case ..<1.60: level = .a1
        case ..<2.35: level = .a2
        case ..<3.10: level = .b1
        case ..<3.90: level = .b2
        case ..<4.75: level = .c1
        default: level = .c2
        }

        var indicators: [String] = []
        if averageLength >= 22 { indicators.append("Viele Wörter pro Satz") }
        else if averageLength <= 11 { indicators.append("Eher kurze Sätze") }
        if longShare >= 0.15 { indicators.append("Viele längere Wörter") }
        if markers >= 3 { indicators.append("Mehrere Satzverknüpfungen") }
        if knownShare < 0.45 {
            indicators.append("Viele Wörter außerhalb der kleinen Vergleichslisten")
        }
        if indicators.isEmpty { indicators.append("Gemischter Wortschatz und Satzbau") }

        let challengingWords = Array(Set(words.compactMap { word -> String? in
            let normalized = GermanLexicon.normalize(word.surface)
            guard normalized.count >= 8,
                  GermanLexicon.rank(of: word) != 1,
                  normalized.unicodeScalars.contains(where: { CharacterSet.letters.contains($0) })
            else { return nil }
            return normalized
        })).sorted { lhs, rhs in
            if lhs.count != rhs.count { return lhs.count > rhs.count }
            return lhs < rhs
        }.prefix(8)

        return Assessment(
            state: .ready,
            level: level,
            numericScore: score,
            wordCount: wordCount,
            sentenceCount: sentenceCount,
            averageSentenceLength: averageLength,
            longWordShare: longShare,
            knownWordShare: knownShare,
            indicators: indicators,
            challengingWords: Array(challengingWords)
        )
    }
}
