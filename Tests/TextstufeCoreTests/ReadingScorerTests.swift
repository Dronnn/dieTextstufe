import XCTest
@testable import TextstufeCore

final class ReadingScorerTests: XCTestCase {
    // MARK: - Guards

    func testEmptyTextHasNoLevel() {
        let output = ReadingScorer.evaluate(TextFeatures(words: [], sentenceWordCounts: []))
        XCTAssertEqual(output.state, .empty)
        XCTAssertNil(output.level)
        XCTAssertNil(output.zixScore)
    }

    func testHalloNeverReturnsLevel() {
        let output = ReadingScorer.evaluate(TextFeatures(words: [WordObservation("Hallo")], sentenceWordCounts: [1]))
        XCTAssertEqual(output.state, .tooShort)
        XCTAssertNil(output.level)
    }

    func test49WordsCannotReceiveLevel() {
        let output = ReadingScorer.evaluate(fixture(repeating: "Haus", count: 49, sentenceCounts: [17, 16, 16]))
        XCTAssertEqual(output.state, .tooShort)
        XCTAssertNil(output.level)
    }

    func test50WordsNeedThreeSentences() {
        let output = ReadingScorer.evaluate(fixture(repeating: "Haus", count: 50, sentenceCounts: [25, 25]))
        XCTAssertEqual(output.state, .tooShort)
        XCTAssertNil(output.level)
    }

    func testNonGermanTextIsRejectedAfterLengthValidation() {
        let output = ReadingScorer.evaluate(
            fixture(repeating: "hello", count: 60, sentenceCounts: [20, 20, 20], isGerman: false)
        )
        XCTAssertEqual(output.state, .notGerman)
        XCTAssertNil(output.level)
    }

    // MARK: - Golden fixtures

    /// 60-word everyday German passage.
    func testEverydayPassageMatchesGoldenScore() {
        let output = ReadingScorer.evaluate(TextFeatures(
            words: Self.everydayWords.map { WordObservation($0.0, lemma: $0.1) },
            sentenceWordCounts: [8, 10, 10, 9, 14, 9],
            germanConfidence: 0.99,
            detectedLanguageIsGerman: true
        ))

        XCTAssertEqual(output.state, .ready)
        XCTAssertEqual(output.wordCount, 60)
        XCTAssertEqual(output.sentenceCount, 6)
        XCTAssertEqual(output.level, .a1)
        XCTAssertNil(output.alternateLevel)
        XCTAssertEqual(output.zixScore ?? .nan, 4.625427290, accuracy: 1e-6)

        let features = try! XCTUnwrap(output.features)
        XCTAssertEqual(features.sentenceLengthMean, 10, accuracy: 1e-9)
        XCTAssertEqual(features.rix, 11.0 / 6.0, accuracy: 1e-9)
        XCTAssertEqual(features.vocabularyA1, 0.8833333333, accuracy: 1e-9)
        XCTAssertEqual(features.vocabularyA2, 0.9666666667, accuracy: 1e-9)
        XCTAssertEqual(features.vocabularyB1, 1.0, accuracy: 1e-9)
        XCTAssertEqual(features.commonWordScore, 9.4300666667, accuracy: 1e-9)
        XCTAssertFalse(output.isUncertain)
    }

    /// 62-word administrative German passage; lands on the C1/C2 boundary.
    func testAdministrativePassageMatchesGoldenScore() {
        let output = ReadingScorer.evaluate(TextFeatures(
            words: Self.administrativeWords.map { WordObservation($0.0, lemma: $0.1) },
            sentenceWordCounts: [14, 13, 20, 15],
            germanConfidence: 0.99,
            detectedLanguageIsGerman: true
        ))

        XCTAssertEqual(output.state, .ready)
        XCTAssertEqual(output.wordCount, 62)
        XCTAssertEqual(output.level, .c1)
        XCTAssertNil(output.alternateLevel)
        XCTAssertEqual(output.zixScore ?? .nan, -2.724858543, accuracy: 1e-6)
        XCTAssertFalse(output.isUncertain)
    }

    func testScoreIsAlwaysWithinPublishedRange() {
        for word in ["Haus", "verhältnismäßigkeit", "xyzabc", "Straße"] {
            let output = ReadingScorer.evaluate(fixture(repeating: word, count: 100, sentenceCounts: [40, 30, 30]))
            let score = try! XCTUnwrap(output.zixScore)
            XCTAssertTrue((-10.0...10.0).contains(score), "score for \(word) was \(score)")
        }
    }

    // MARK: - ZIX mechanics

    func testZixScoreUsesPublishedCoefficients() {
        let vector = ZixFeatureVector(
            sentenceLengthMean: 13.0,
            rix: 5.0,
            vocabularyA1: 0.5,
            vocabularyA2: 0.6,
            vocabularyB1: 0.7,
            commonWordScore: 7.0
        )
        // Reference value computed from the published scaler and Ridge coefficients.
        XCTAssertEqual(ReadingScorer.zixScore(for: vector), -2.100830648, accuracy: 1e-8)
    }

    func testConstrainedLemmatizationResolvesInflections() {
        XCTAssertEqual(GermanLemma.lemma(for: "gehe"), "gehen")
        XCTAssertEqual(GermanLemma.lemma(for: "ist"), "sein")
        XCTAssertEqual(GermanLemma.lemma(for: "zum"), "zu")
        XCTAssertEqual(GermanLemma.lemma(for: "am"), "an")
        XCTAssertEqual(GermanLemma.lemma(for: "Häuser"), "haus")
        XCTAssertEqual(GermanLemma.lemma(for: "spricht"), "sprechen")
        XCTAssertEqual(GermanLemma.lemma(for: "gemacht"), "machen")
        XCTAssertEqual(GermanLemma.lemma(for: "kleinen"), "klein")
    }

    func testGermanSharpSIsFoldedForLookup() {
        XCTAssertEqual(ReadingScorer.normalize("Straße"), "strasse")
        XCTAssertTrue(ZixModelData.vocabularyA1.contains("strasse"))
    }

    func testUmlautsSurviveNormalization() {
        XCTAssertEqual(ReadingScorer.normalize("Gemüse"), "gemüse")
    }

    func testBoundaryScoresGetNeighbouringLevel() {
        XCTAssertEqual(ReadingScorer.alternateLevel(forZixScore: 4.2), .a2)
        XCTAssertEqual(ReadingScorer.alternateLevel(forZixScore: 3.9), .a1)
        XCTAssertNil(ReadingScorer.alternateLevel(forZixScore: 3.0))
    }

    func testLevelMappingFollowsPublishedThresholds() {
        XCTAssertEqual(ReadingScorer.level(forZixScore: 7), .a1)
        XCTAssertEqual(ReadingScorer.level(forZixScore: 4), .a1)
        XCTAssertEqual(ReadingScorer.level(forZixScore: 2), .a2)
        XCTAssertEqual(ReadingScorer.level(forZixScore: 0), .b1)
        XCTAssertEqual(ReadingScorer.level(forZixScore: -1.9), .b2)
        XCTAssertEqual(ReadingScorer.level(forZixScore: -4), .c1)
        XCTAssertEqual(ReadingScorer.level(forZixScore: -4.1), .c2)
    }

    func testInsightsAreExplanationsNotScoreInput() {
        let output = ReadingScorer.evaluate(fixture(repeating: "Haus", count: 60, sentenceCounts: [20, 20, 20]))
        XCTAssertFalse(output.insights.isEmpty)
        XCTAssertTrue(AssessmentInsight.allCases.contains(output.insights[0]))
    }

    // MARK: - Donations

    func testDonationCatalogIsStableAndUnique() {
        XCTAssertEqual(DonationTier.all.count, 6)
        XCTAssertEqual(Set(DonationTier.all.map(\.id)).count, 6)
        XCTAssertTrue(DonationTier.all.allSatisfy { $0.id.hasPrefix("com.mrmaier.textstufe.tip.") })
        XCTAssertEqual(DonationTier.all.map(\.fallbackPrice), ["$2.99", "$4.99", "$7.99", "$19.99", "$49.99", "$99.99"])
    }

    // MARK: - Fixtures

    private func fixture(
        repeating word: String,
        count: Int,
        sentenceCounts: [Int],
        isGerman: Bool = true
    ) -> TextFeatures {
        TextFeatures(
            words: (0..<count).map { _ in WordObservation(word) },
            sentenceWordCounts: sentenceCounts,
            germanConfidence: isGerman ? 0.99 : 0.05,
            detectedLanguageIsGerman: isGerman
        )
    }

    private static let everydayWords: [(String, String)] = [
        ("Am", "am"), ("Samstag", "samstag"), ("gehe", "gehen"), ("ich", "ich"), ("meistens", "meistens"),
        ("auf", "auf"), ("den", "der"), ("Markt", "markt"),
        ("Dort", "dort"), ("kaufe", "kaufen"), ("ich", "ich"), ("frisches", "frisch"), ("Obst", "obst"),
        ("und", "und"), ("Gemüse", "gemüse"), ("für", "für"), ("meine", "mein"), ("Familie", "familie"),
        ("Danach", "danach"), ("treffe", "treffen"), ("ich", "ich"), ("oft", "oft"), ("einen", "ein"),
        ("Freund", "freund"), ("in", "in"), ("einem", "ein"), ("kleinen", "klein"), ("Café", "café"),
        ("Wir", "wir"), ("sprechen", "sprechen"), ("über", "über"), ("unsere", "unser"), ("Woche", "woche"),
        ("und", "und"), ("planen", "planen"), ("einen", "ein"), ("Ausflug", "ausflug"),
        ("Wenn", "wenn"), ("das", "der"), ("Wetter", "wetter"), ("schön", "schön"), ("ist", "sein"),
        ("fahren", "fahren"), ("wir", "wir"), ("am", "am"), ("Sonntag", "sonntag"), ("mit", "mit"),
        ("dem", "der"), ("Fahrrad", "fahrrad"), ("zum", "zu"), ("See", "see"),
        ("Dort", "dort"), ("essen", "essen"), ("wir", "wir"), ("zusammen", "zusammen"), ("und", "und"),
        ("genießen", "genießen"), ("den", "der"), ("freien", "frei"), ("Tag", "tag")
    ]

    private static let administrativeWords: [(String, String)] = [
        ("Die", "der"), ("Verhältnismäßigkeit", "verhältnismäßigkeit"), ("der", "der"), ("angeordneten", "anordnen"), ("Maßnahme", "maßnahme"), ("ist", "sein"),
        ("im", "im"), ("Rahmen", "rahmen"), ("der", "der"), ("ermessensfehlerfreien", "ermessensfehlerfrei"), ("Entscheidung", "entscheidung"), ("umfassend", "umfassend"),
        ("zu", "zu"), ("prüfen", "prüfen"), ("Dabei", "dabei"), ("sind", "sein"), ("die", "der"), ("betroffenen", "betroffen"),
        ("Grundrechte", "grundrecht"), ("sowie", "sowie"), ("der", "der"), ("verfassungsrechtlich", "verfassungsrechtlich"), ("verankerte", "verankern"), ("Vertrauensschutz", "vertrauensschutz"),
        ("angemessen", "angemessen"), ("zu", "zu"), ("berücksichtigen", "berücksichtigen"), ("Eine", "ein"), ("abweichende", "abweichend"), ("Beurteilung", "beurteilung"),
        ("kommt", "kommen"), ("nur", "nur"), ("dann", "dann"), ("in", "in"), ("Betracht", "betracht"), ("wenn", "wenn"),
        ("besondere", "besonder"), ("Umstände", "umstand"), ("die", "der"), ("Annahme", "annahme"), ("rechtfertigen", "rechtfertigen"), ("dass", "dass"),
        ("die", "der"), ("gesetzlichen", "gesetzlich"), ("Voraussetzungen", "voraussetzung"), ("nicht", "nicht"), ("vorliegen", "vorliegen"), ("Die", "der"),
        ("Behörde", "behörde"), ("hat", "haben"), ("ihre", "ihr"), ("Entscheidung", "entscheidung"), ("nachvollziehbar", "nachvollziehbar"), ("zu", "zu"),
        ("begründen", "begründen"), ("und", "und"), ("dem", "der"), ("Betroffenen", "betroffene"), ("die", "der"), ("wesentlichen", "wesentlich"),
        ("Erwägungen", "erwägung"), ("mitzuteilen", "mitteilen")
    ]
}
