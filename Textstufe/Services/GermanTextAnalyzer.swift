import Foundation
import NaturalLanguage

/// Apple framework adapter. Everything is executed on-device.
/// Creates fresh tagger/tokenizer instances for every request (no cross-thread reuse).
enum GermanTextAnalyzer {
    static func analyze(_ text: String) -> Assessment {
        let prepared = prepare(text)
        guard !prepared.isEmpty else {
            return ReadingScorer.evaluate(TextFeatures(words: [], sentenceWordCounts: []))
        }

        let languageRecognizer = NLLanguageRecognizer()
        languageRecognizer.processString(prepared)
        let confidence = languageRecognizer.languageHypotheses(withMaximum: 3)[.german]
        let isGerman = languageRecognizer.dominantLanguage == .german

        let wordTokenizer = NLTokenizer(unit: .word)
        wordTokenizer.string = prepared
        wordTokenizer.setLanguage(.german)
        let wordRanges = wordTokenizer.tokens(for: prepared.startIndex..<prepared.endIndex)
            .filter { range in
                prepared[range].unicodeScalars.contains(where: { CharacterSet.letters.contains($0) })
            }

        let tagger = NLTagger(tagSchemes: [.lemma])
        tagger.string = prepared
        tagger.setLanguage(.german, range: prepared.startIndex..<prepared.endIndex)
        let words: [WordObservation] = wordRanges.map { range in
            let lemma = tagger.tag(at: range.lowerBound, unit: .word, scheme: .lemma).0?.rawValue
            return WordObservation(String(prepared[range]), lemma: lemma)
        }

        let sentenceTokenizer = NLTokenizer(unit: .sentence)
        sentenceTokenizer.string = prepared
        sentenceTokenizer.setLanguage(.german)
        let sentenceRanges = sentenceTokenizer.tokens(for: prepared.startIndex..<prepared.endIndex)
        let sentenceWordCounts: [Int] = sentenceRanges.map { sentence in
            wordRanges.filter { word in
                word.lowerBound >= sentence.lowerBound && word.upperBound <= sentence.upperBound
            }.count
        }

        return ReadingScorer.evaluate(TextFeatures(
            words: words,
            sentenceWordCounts: sentenceWordCounts,
            germanConfidence: confidence,
            detectedLanguageIsGerman: isGerman
        ))
    }

    /// Collapses line breaks and repeated whitespace without inventing sentence boundaries.
    static func prepare(_ text: String) -> String {
        text
            .split(whereSeparator: \.isNewline)
            .map { $0.trimmingCharacters(in: .whitespaces) }
            .filter { !$0.isEmpty }
            .map { $0.replacingOccurrences(of: "\\s+", with: " ", options: .regularExpression) }
            .joined(separator: " ")
    }
}
