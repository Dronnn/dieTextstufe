import XCTest
@testable import TextstufeCore

final class ReadingScorerTests: XCTestCase {
    func testEmptyTextHasNoLevel() {
        let output = ReadingScorer.evaluate(TextFeatures(words: [], sentenceWordCounts: []))
        XCTAssertEqual(output.state, .empty)
        XCTAssertNil(output.level)
    }

    func testHalloNeverReturnsC2() {
        let output = ReadingScorer.evaluate(TextFeatures(words: [WordObservation("Hallo")], sentenceWordCounts: [1]))
        XCTAssertEqual(output.state, .tooShort)
        XCTAssertNil(output.level)
    }

    func test49WordsCannotReceiveLevel() {
        let output = ReadingScorer.evaluate(fixture(word: "Hallo", count: 49, sentenceCounts: [17, 16, 16]))
        XCTAssertEqual(output.state, .tooShort)
        XCTAssertNil(output.level)
    }

    func test50WordsNeedThreeSentences() {
        let output = ReadingScorer.evaluate(fixture(word: "Hallo", count: 50, sentenceCounts: [25, 25]))
        XCTAssertEqual(output.state, .tooShort)
        XCTAssertNil(output.level)
    }

    func test50WordsAndThreeSentencesCanBeScored() {
        let output = ReadingScorer.evaluate(fixture(word: "Haus", count: 51, sentenceCounts: [17, 17, 17]))
        XCTAssertEqual(output.state, .ready)
        XCTAssertNotNil(output.level)
        XCTAssertEqual(output.wordCount, 51)
        XCTAssertEqual(output.sentenceCount, 3)
    }

    func testNonGermanTextIsRejectedAfterLengthValidation() {
        let output = ReadingScorer.evaluate(fixture(word: "hello", count: 60, sentenceCounts: [20, 20, 20], isGerman: false))
        XCTAssertEqual(output.state, .notGerman)
        XCTAssertNil(output.level)
    }

    func testInflectedWordMayUseLemma() {
        XCTAssertEqual(GermanLexicon.rank(of: WordObservation("Häuser", lemma: "Haus")), 1)
    }

    func testUnknownShortWordIsNotAutomaticallyC2() {
        let output = ReadingScorer.evaluate(fixture(word: "xyzab", count: 60, sentenceCounts: [20, 20, 20]))
        XCTAssertEqual(output.state, .ready)
        XCTAssertNotEqual(output.level, .c2)
    }

    func testLongerSentencesIncreaseOrKeepScore() {
        let short = ReadingScorer.evaluate(fixture(word: "Haus", count: 60, sentenceCounts: [10, 10, 10, 10, 10, 10]))
        let long = ReadingScorer.evaluate(fixture(word: "Haus", count: 60, sentenceCounts: [20, 20, 20]))
        XCTAssertLessThanOrEqual(short.numericScore ?? 0, long.numericScore ?? 0)
    }

    func testNumericalScoreIsWithinRange() {
        let output = ReadingScorer.evaluate(fixture(word: "verhältnismäßigkeit", count: 100, sentenceCounts: [40, 30, 30]))
        XCTAssertTrue((1.0...6.0).contains(output.numericScore ?? 0))
    }

    private func fixture(word: String, count: Int, sentenceCounts: [Int], isGerman: Bool = true) -> TextFeatures {
        TextFeatures(
            words: (0..<count).map { _ in WordObservation(word) },
            sentenceWordCounts: sentenceCounts,
            germanConfidence: isGerman ? 0.99 : 0.05,
            detectedLanguageIsGerman: isGerman
        )
    }
}
