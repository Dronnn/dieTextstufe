import Foundation
import NaturalLanguage

/// Apple framework adapter. Everything is executed on-device.
/// Creates fresh tagger/tokenizer instances for every request (no cross-thread reuse).
enum GermanTextAnalyzer {
    static func analyze(_ text: String) -> Assessment {
        let trimmed = text.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !trimmed.isEmpty else {
            return ReadingScorer.evaluate(TextFeatures(words: [], sentenceWordCounts: []))
        }

        let languageRecognizer = NLLanguageRecognizer()
        languageRecognizer.processString(trimmed)
        let confidence = languageRecognizer.languageHypotheses(withMaximum: 3)[.german]
        let isGerman = languageRecognizer.dominantLanguage == .german

        let wordTokenizer = NLTokenizer(unit: .word)
        wordTokenizer.string = trimmed
        wordTokenizer.setLanguage(.german)
        let wordRanges = wordTokenizer.tokens(for: trimmed.startIndex..<trimmed.endIndex)
            .filter { range in
                trimmed[range].unicodeScalars.contains(where: { CharacterSet.letters.contains($0) })
            }

        let tagger = NLTagger(tagSchemes: [.lemma])
        tagger.string = trimmed
        tagger.setLanguage(.german, range: trimmed.startIndex..<trimmed.endIndex)
        let words: [WordObservation] = wordRanges.map { range in
            let lemma = tagger.tag(at: range.lowerBound, unit: .word, scheme: .lemma).0?.rawValue
            return WordObservation(String(trimmed[range]), lemma: lemma)
        }

        let sentenceTokenizer = NLTokenizer(unit: .sentence)
        sentenceTokenizer.string = trimmed
        sentenceTokenizer.setLanguage(.german)
        let sentenceRanges = sentenceTokenizer.tokens(for: trimmed.startIndex..<trimmed.endIndex)
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
}
