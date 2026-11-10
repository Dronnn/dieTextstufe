import SwiftUI
import UIKit

struct AssessmentView: View {
    let assessment: Assessment

    private var numberFormat: FloatingPointFormatStyle<Double> {
        .number.precision(.fractionLength(1))
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 19) {
            Text("Deine Auswertung")
                .font(.system(.title2, design: .serif, weight: .bold))
                .foregroundStyle(.primary)

            if let level = assessment.level {
                HStack(spacing: 3) {
                    ForEach(CEFRLevel.allCases, id: \.self) { candidate in
                        Text(candidate.rawValue)
                            .font(.subheadline.weight(.semibold))
                            .foregroundStyle(candidate == level ? Color.white : Color.primary)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 10)
                            .background(candidate == level ? Theme.forest : Theme.canvas)
                            .clipShape(RoundedRectangle(cornerRadius: 6))
                    }
                }
                Text("Ungefähr \(level.rawValue)")
                    .font(.system(.largeTitle, design: .serif, weight: .bold))
                    .foregroundStyle(Theme.ink)
                Text("Geschätzte Leseschwierigkeit – keine offizielle GER-Prüfung.")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)

                Divider()
                stats

                if !assessment.indicators.isEmpty {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Warum dieses Ergebnis?")
                            .font(.headline)
                        ForEach(assessment.indicators, id: \.self) { item in
                            Label(item, systemImage: "circle.fill")
                                .font(.subheadline)
                                .labelStyle(DetailDotStyle())
                        }
                    }
                }
                if !assessment.challengingWords.isEmpty {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Möglicherweise schwierige Wörter")
                            .font(.headline)
                        Text(assessment.challengingWords.joined(separator: " · "))
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                        Text("Automatische Auswahl, nicht nach GER-Wortniveau geprüft.")
                            .font(.caption)
                            .foregroundStyle(.secondary)
                    }
                }
                Button {
                    UIPasteboard.general.string = copyText
                } label: {
                    Label("Ergebnis kopieren", systemImage: "doc.on.doc")
                }
                .buttonStyle(.bordered)
            } else {
                Image(systemName: "text.magnifyingglass")
                    .font(.title)
                    .foregroundStyle(Theme.mutedGold)
                    .accessibilityHidden(true)
                Text(messageTitle)
                    .font(.system(.title3, design: .serif, weight: .semibold))
                Text(messageDetail)
                    .foregroundStyle(.secondary)
                    .font(.subheadline)
                if assessment.wordCount > 0 { Divider(); stats }
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(22)
        .background(Theme.surface, in: RoundedRectangle(cornerRadius: 20))
        .accessibilityElement(children: .contain)
    }

    private var stats: some View {
        HStack(alignment: .top, spacing: 10) {
            stat("Wörter", String(assessment.wordCount))
            Spacer(minLength: 0)
            stat("Sätze", String(assessment.sentenceCount))
            Spacer(minLength: 0)
            stat("Wörter pro Satz", assessment.averageSentenceLength.formatted(numberFormat))
        }
    }

    private func stat(_ title: String, _ value: String) -> some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(title).font(.caption).foregroundStyle(.secondary)
            Text(value).font(.title3.weight(.semibold)).monospacedDigit()
        }
    }

    private var messageTitle: String {
        switch assessment.state {
        case .ready: ""
        case .empty: "Noch kein Text"
        case .tooShort: "Der Text ist zu kurz"
        case .notGerman: "Bitte deutschen Text eingeben"
        }
    }

    private var messageDetail: String {
        switch assessment.state {
        case .ready: ""
        case .empty: "Füge einen Text ein, um seine Leseschwierigkeit einzuschätzen."
        case .tooShort: "Für eine sinnvolle Einschätzung brauchen wir mindestens 50 Wörter in drei Sätzen. Einzelne Wörter wie „Hallo“ erhalten bewusst kein Niveau."
        case .notGerman: "Die Sprache wurde nicht sicher als Deutsch erkannt. Prüfe den Text und versuche es erneut."
        }
    }

    private var copyText: String {
        guard let level = assessment.level else { return "" }
        return "Textstufe: ungefähr \(level.rawValue)\nWörter: \(assessment.wordCount)\nSätze: \(assessment.sentenceCount)\nWörter pro Satz: \(assessment.averageSentenceLength.formatted(numberFormat))\nHinweis: Ungefähre, nicht offiziell geprüfte Leseschwierigkeit."
    }
}

private struct DetailDotStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack(alignment: .firstTextBaseline, spacing: 9) {
            configuration.icon
                .font(.system(size: 6))
                .foregroundStyle(Theme.mutedGold)
            configuration.title
        }
    }
}
