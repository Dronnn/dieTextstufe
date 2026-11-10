import SwiftUI
import UIKit

struct AssessmentView: View {
    let assessment: Assessment

    private var numberFormat: FloatingPointFormatStyle<Double> {
        .number.precision(.fractionLength(1))
    }

    private var signedScoreFormat: FloatingPointFormatStyle<Double> {
        .number.precision(.fractionLength(1)).sign(strategy: .always())
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 19) {
            Text("assessment.title")
                .font(.system(.title2, design: .rounded, weight: .bold))
                .foregroundStyle(.primary)

            if let level = assessment.level {
                CEFRBands(level: level)

                Text(String(format: String(localized: "assessment.approximate"), level.rawValue))
                    .font(.system(.largeTitle, design: .rounded, weight: .bold))
                    .foregroundStyle(Theme.ink)

                if let alternate = assessment.alternateLevel {
                    Text(String(format: String(localized: "assessment.uncertain"), alternate.rawValue))
                        .font(.subheadline)
                        .foregroundStyle(Theme.mutedGold)
                }

                Text("assessment.disclaimer")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)

                if let score = assessment.zixScore {
                    HStack(alignment: .firstTextBaseline) {
                        Text("assessment.zix")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                        Spacer()
                        Text(score.formatted(signedScoreFormat))
                            .font(.title3.weight(.semibold))
                            .monospacedDigit()
                    }
                    .padding(.top, 2)
                }

                Divider()
                stats

                if !assessment.insights.isEmpty {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("assessment.why")
                            .font(.headline)
                        ForEach(assessment.insights, id: \.self) { insight in
                            Label {
                                Text(LocalizedStringKey(insight.localizationKey))
                            } icon: {
                                Image(systemName: "circle.fill")
                            }
                            .font(.subheadline)
                            .labelStyle(DetailDotStyle())
                        }
                    }
                }

                if !assessment.challengingWords.isEmpty {
                    VStack(alignment: .leading, spacing: 8) {
                        Text("assessment.challenging")
                            .font(.headline)
                        Text(assessment.challengingWords.joined(separator: " · "))
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                        Text("assessment.challengingCaption")
                            .font(.caption)
                            .foregroundStyle(.secondary)
                    }
                }

                Button {
                    UIPasteboard.general.string = copyText
                } label: {
                    Label("assessment.copy", systemImage: "doc.on.doc")
                }
                .buttonStyle(.bordered)
            } else {
                Image(systemName: "text.magnifyingglass")
                    .font(.title)
                    .foregroundStyle(Theme.mutedGold)
                    .accessibilityHidden(true)
                Text(messageTitle)
                    .font(.system(.title3, design: .rounded, weight: .semibold))
                Text(messageDetail)
                    .foregroundStyle(.secondary)
                    .font(.subheadline)
                if assessment.wordCount > 0 {
                    Divider()
                    stats
                }
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(22)
        .background(Theme.surface, in: RoundedRectangle(cornerRadius: 20))
        .accessibilityElement(children: .contain)
    }

    private var stats: some View {
        HStack(alignment: .top, spacing: 10) {
            stat("stats.words", String(assessment.wordCount))
            Spacer(minLength: 0)
            stat("stats.sentences", String(assessment.sentenceCount))
            Spacer(minLength: 0)
            stat("stats.wordsPerSentence", assessment.wordsPerSentence.formatted(numberFormat))
        }
    }

    private func stat(_ title: LocalizedStringKey, _ value: String) -> some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(title).font(.caption).foregroundStyle(.secondary)
            Text(value).font(.title3.weight(.semibold)).monospacedDigit()
        }
    }

    private var messageTitle: LocalizedStringKey {
        switch assessment.state {
        case .ready: ""
        case .empty: "state.empty.title"
        case .tooShort: "state.tooShort.title"
        case .notGerman: "state.notGerman.title"
        }
    }

    private var messageDetail: LocalizedStringKey {
        switch assessment.state {
        case .ready: ""
        case .empty: "state.empty.detail"
        case .tooShort: "state.tooShort.detail"
        case .notGerman: "state.notGerman.detail"
        }
    }

    private var copyText: String {
        guard let level = assessment.level, let score = assessment.zixScore else { return "" }
        return String(
            format: String(localized: "copy.template"),
            level.rawValue,
            String(assessment.wordCount),
            String(assessment.sentenceCount),
            assessment.wordsPerSentence.formatted(numberFormat),
            score.formatted(numberFormat)
        )
    }
}

private struct CEFRBands: View {
    let level: CEFRLevel

    var body: some View {
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
        .accessibilityElement(children: .ignore)
        .accessibilityLabel(Text(verbatim: level.rawValue))
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
