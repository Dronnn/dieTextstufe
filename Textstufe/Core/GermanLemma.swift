import Foundation

/// Constrained German lemmatization for the ZIX vocabulary lookup.
///
/// Apple's lemma tagger returns `nil` for German on current systems, and the
/// original ZIX pipeline relies on spaCy. This resolver combines the
/// spacy-lookups-data lemma table with conservative suffix rules and only keeps
/// candidates that exist in the ZIX reference vocabulary, so it never invents
/// lemmas outside the model.
enum GermanLemma {
    private static let lookup: [String: String] = GermanLemmaData.parse(GermanLemmaData.lookupBlob)

    private static let contractions: [String: String] = [
        "am": "an", "im": "in", "zum": "zu", "zur": "zu", "beim": "bei",
        "vom": "von", "ins": "in", "ans": "an", "aufs": "auf",
        "durchs": "durch", "ums": "um"
    ]

    private static let suffixes = [
        "ern", "em", "en", "er", "es", "et", "est",
        "st", "te", "ten", "tet", "test", "e", "s", "n", "m", "r", "t"
    ]

    private static let endings = ["", "en", "e", "n", "er", "es", "em"]

    static func lemma(for surface: String, taggerLemma: String? = nil) -> String {
        let word = normalize(surface)

        if let tagger = taggerLemma.map(normalize), isKnown(tagger) {
            return tagger
        }
        if let mapped = lookup[word], isKnown(mapped) {
            return mapped
        }

        var best: String?
        for candidate in candidates(for: word) where isKnown(candidate) {
            if let current = best {
                if score(candidate) > score(current) { best = candidate }
            } else {
                best = candidate
            }
        }
        return best ?? word
    }

    static func normalize(_ token: String) -> String {
        token
            .lowercased(with: Locale(identifier: "de_DE"))
            .replacingOccurrences(of: "ß", with: "ss")
            .trimmingCharacters(in: .punctuationCharacters.union(.whitespacesAndNewlines))
    }

    // MARK: - Candidates

    private static func candidates(for word: String) -> Set<String> {
        var result: Set<String> = [word]

        if let contraction = contractions[word] {
            result.insert(contraction)
        }

        for suffix in suffixes where word.hasSuffix(suffix) {
            let stem = String(word.dropLast(suffix.count))
            guard stem.count >= 3 else { continue }
            let variants = [stem, withoutUmlaut(stem)]
            for base in variants {
                for ending in endings {
                    result.insert(base + ending)
                }
            }
        }

        if word.hasPrefix("ge"), word.hasSuffix("t"), word.count > 5 {
            let stem = String(word.dropFirst(2).dropLast())
            result.insert(withoutUmlaut(stem) + "en")
            result.insert(stem + "en")
        }

        return result
    }

    private static func withoutUmlaut(_ value: String) -> String {
        value
            .replacingOccurrences(of: "ä", with: "a")
            .replacingOccurrences(of: "ö", with: "o")
            .replacingOccurrences(of: "ü", with: "u")
    }

    // MARK: - Vocabulary

    private static func isKnown(_ lemma: String) -> Bool {
        ZixModelData.vocabularyA1.contains(lemma)
            || ZixModelData.vocabularyA2.contains(lemma)
            || ZixModelData.vocabularyB1.contains(lemma)
            || ZixModelData.wordScores[lemma] != nil
    }

    private static func score(_ lemma: String) -> Double {
        ZixModelData.wordScores[lemma] ?? 0
    }
}
