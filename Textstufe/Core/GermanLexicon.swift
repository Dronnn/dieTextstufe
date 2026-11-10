import Foundation

/// Small *hand-curated*, deliberately non-official example word groups.
/// Not copied from Goethe or the Zurich ZIX vocabulary/model assets.
/// These lists are a temporary baseline, NOT validated CEFR vocabulary classifications.
enum GermanLexicon {
    static let basic: Set<String> = words("""
    ich du er sie es wir ihr mich dich ihm ihnen uns euch mein dein sein unser euer
    der die das des dem den ein eine einer einem einen kein keine keine auch nicht ja nein
    und oder aber denn weil wenn dass so wie als mit ohne für bei zu zum zur von vom aus
    auf in im am an um nach vor über unter zwischen neben hinter bis durch gegen
    ist bin bist sind seid war waren werde wird werden haben habe hat hast hatte hatten
    sein machen tun gehen komme kommen geht gehen fahren laufen stehen sitzen liegen
    geben nehmen finden suchen sehen hören sagen sprechen reden fragen antworten wissen
    denken glauben mögen möchten wollen müssen dürfen sollen können kann muss will
    essen trinken schlafen lesen schreiben spielen lernen arbeiten leben wohnen heißen
    heißen heißen heißen kaufen bezahlen brauchen bringen treffen öffnen schließen
    kommen bleiben reisen warten helfen zeigen nehmen kochen waschen
    heute morgen gestern jetzt später früh spät immer oft manchmal nie wieder schon noch
    gut schlecht groß klein lang kurz neu alt jung schön wichtig richtig falsch einfach
    schnell langsam kalt warm heiß teuer billig viel wenig mehr alle jeder einige
    müde krank gesund glücklich traurig freundlich laut leise leicht schwer
    hier dort da wo wohin wann wer was warum welche dieser diese dieses andere
    mann frau kind junge mädchen freund freundin familie mutter vater eltern bruder
    schwester sohn tochter mensch leute name haus wohnung zimmer tür fenster tisch
    stuhl bett küche bad straße stadt land welt schule klasse lehrer schüler student
    buch text wort satz sprache deutsch englisch frage antwort brief email telefon
    computer handy internet geld preis laden geschäft markt supermarkt restaurant
    café essen brot milch wasser kaffee tee apfel obst gemüse fleisch reis käse
    zeit uhr tag woche monat jahr montag dienstag mittwoch donnerstag freitag
    samstag sonntag wochenende abend nacht mittag minute stunde wetter sonne regen
    schnee auto bus zug fahrrad bahnhof flughafen ticket arbeit urlaub ferien
    weg platz park freundin film musik foto bild geschichte problem idee
    eins zwei drei vier fünf sechs sieben acht neun zehn hundert tausend
    erster zweite letzte nächste jeder etwas alles nichts genug zusammen gern gern
    sehr nur fast wirklich besonders vielleicht bitte danke hallo tschüss
    """)

    static let intermediate: Set<String> = words("""
    deshalb trotzdem obwohl während nachdem bevor sobald seitdem falls damit deswegen
    außerdem hingegen allerdings zunächst schließlich gleichzeitig einerseits andererseits
    ungefähr entsprechend gegenüber innerhalb außerhalb hinsichtlich zumindest
    sowohl entweder weder wederfalls zwar nämlich dennoch daher dadurch
    entscheiden erklären beschreiben berichten vergleichen empfehlen vermeiden
    verbessern verstehen entwickeln benutzen verwenden verändern unterstützen
    erreichen entstehen erhalten erkennen erwarten ermöglichen entscheiden übernehmen
    teilnehmen stattfinden vorbereiten erzählen erleben versuchen vergessen
    erfahren verlassen untersuchen entdecken erhalten vorstellen anbieten
    berücksichtigen überprüfen beweisen vertrauen vermuten vermissen gestalten
    enthalten befinden erfordern gelingen scheitern vereinbaren erlauben
    voraussetzen bestätigen bestimmen verbinden beeinflussen
    erfahrung ergebnis voraussetzung entscheidung zusammenhang möglichkeit
    bedeutung unterschied zusammenfassung veränderung verantwortung
    ausbildung beruf unternehmen gesellschaft umwelt natur energie
    wirtschaft wissenschaft forschung bildung politik kultur geschichte
    gesundheit ernährung beziehung freundschaft nachricht information
    meinung argument beispiel grund ursache folge vorteil nachteil
    chance risiko lösung ziel zweck plan bedingung schritt maßnahme
    prozess system produkt projekt entwicklung technik methode
    öffentlich privat persönlich gemeinsam grundsätzlich unterschiedlich
    notwendig wahrscheinlich deutlich plötzlich häufig selten bisher
    inzwischen unabhängig abhängig sowohl generell allgemein speziell
    aktuell ähnlich vergleichbar durchschnittlich langfristig kurzfristig
    umfangreich erfolgreich schwierig komplex geeignet erheblich
    """)

    static let advanced: Set<String> = words("""
    infolgedessen nichtsdestotrotz ungeachtet wohingegen demgegenüber
    obgleich wenngleich indes sofern mithin zumal insofern demzufolge
    dementsprechend gleichwohl vorausgesetzt
    differenzieren reflektieren implizieren spezifizieren konzipieren
    evaluieren extrapolieren abstrahieren legitimieren differenzieren
    operationalisieren implementieren postulieren rekonstruieren
    relativieren veranschaulichen hinterfragen verdeutlichen
    gesellschaftspolitisch volkswirtschaftlich interdisziplinär
    institutionell strukturell systematisch paradigmatisch
    wissenschaftlich theoretisch empirisch quantitativ qualitativ
    ambivalent kontrovers kohärent inkonsistent prägnant
    signifikant substanziell inadäquat essenziell unerlässlich
    perspektive perspektivwechsel konsequenz kontext diskurs
    korrelation kausalität implikation rekonstruktion evaluierung
    differenzierung legitimierung heterogenität ambiguität
    nachhaltigkeit herausforderung gewährleistung rechtsprechung
    verfassungsrechtlich verhältnismäßigkeit verfassungsgericht
    bürokratie verwaltungsakt rechtmäßigkeit gesetzgebung
    erkenntnisgewinn konzeptualisierung bedingtheit phänomen
    analyse synthese theorie hypothese evidenz paradigm
    """)

    /// Structural discourse connectors, not a grammatical parser.
    static let clauseMarkers: Set<String> = words("""
    weil obwohl während nachdem bevor sobald sofern falls indem
    damit sodass wohingegen obgleich wenngleich dass dessen deren
    wodurch worauf weshalb inwiefern insofern als
    """)

    /// Normalized tokens: lowercased, German ß kept distinct from ss.
    static func normalize(_ token: String) -> String {
        token.lowercased(with: Locale(identifier: "de_DE"))
            .trimmingCharacters(in: .punctuationCharacters.union(.whitespacesAndNewlines))
    }

    private static func words(_ source: String) -> Set<String> {
        Set(source.split(whereSeparator: { $0.isWhitespace }).map { normalize(String($0)) })
    }

    static func rank(of word: WordObservation) -> Int? {
        let candidates = [word.lemma, word.surface].compactMap { $0 }.map(normalize)
        for value in candidates {
            if basic.contains(value) { return 1 }
            if intermediate.contains(value) { return 3 }
            if advanced.contains(value) { return 5 }
        }
        return nil
    }
}
