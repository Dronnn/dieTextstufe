import SwiftUI

struct AboutView: View {
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 18) {
                    section("100 % offline", "Die Texte werden ausschließlich auf deinem Gerät verarbeitet. Die App verwendet keine Netzwerkverbindung, keine Benutzerkonten und keine Analyse-Server. Eingaben werden nicht dauerhaft gespeichert.")
                    section("Wie wird bewertet?", "Apples NaturalLanguage-Framework erkennt Wörter, Sätze, mögliche Grundformen und die Sprache. Ein einfacher, lokal berechneter Bewertungsalgorithmus betrachtet häufige Wörter, die Länge der Sätze und längere Wörter.")
                    section("Wie zuverlässig ist das?", "Die Einstufung ist eine grobe Orientierung, kein wissenschaftlich validierter Test und keine offizielle GER-Bewertung. Besonders Fachtexte, Eigennamen und ungewöhnliche Formulierungen können das Ergebnis verfälschen.")
                    section("Warum mindestens 50 Wörter?", "Ein einzelnes Wort wie „Hallo“ sagt praktisch nichts über die Schwierigkeit eines Textes aus. Deshalb vergibt Textstufe erst ab 50 Wörtern in mindestens drei Sätzen eine Stufe.")
                    section("ZIX und diese App", "Textstufe verwendet eine eigene Swift-Heuristik, nicht das originale Zürcher ZIX-Modell. Ein exakter ZIX-Nachbau würde unter anderem die originalen Trainingsparameter und vergleichbare Wortgrundformen benötigen.")
                    section("Datenschutz", "Die App sendet keine Texte an Dritte. Über die Schaltfläche „Ergebnis kopieren“ kannst du eine Zusammenfassung selbst in die Zwischenablage übernehmen.")
                }
                .padding(22)
                .frame(maxWidth: 720, alignment: .leading)
                .frame(maxWidth: .infinity)
            }
            .background(Theme.canvas)
            .navigationTitle("Über Textstufe")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Fertig") { dismiss() }
                }
            }
        }
    }

    private func section(_ title: String, _ text: String) -> some View {
        VStack(alignment: .leading, spacing: 7) {
            Text(title).font(.headline)
            Text(text)
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .fixedSize(horizontal: false, vertical: true)
        }
    }
}
