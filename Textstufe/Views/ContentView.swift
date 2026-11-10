import SwiftUI

struct ContentView: View {
    @State private var input = ""
    @State private var assessment: Assessment?
    @State private var isAnalyzing = false
    @State private var showingInfo = false
    @FocusState private var inputFocused: Bool

    private let maxCharacters = 20_000

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 26) {
                    header
                    editor
                    Button(action: analyze) {
                        HStack(spacing: 10) {
                            if isAnalyzing { ProgressView().tint(.white) }
                            else { Image(systemName: "text.magnifyingglass") }
                            Text(isAnalyzing ? "Text wird analysiert …" : "Text analysieren")
                                .font(.headline)
                        }
                        .frame(maxWidth: .infinity)
                        .frame(minHeight: 50)
                    }
                    .buttonStyle(.plain)
                    .foregroundStyle(.white)
                    .background(Theme.forest, in: RoundedRectangle(cornerRadius: 13))
                    .disabled(isAnalyzing || input.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty)
                    .opacity((isAnalyzing || input.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty) ? 0.55 : 1)

                    if let assessment {
                        AssessmentView(assessment: assessment)
                    } else {
                        emptyState
                    }
                    explanation
                }
                .frame(maxWidth: 720, alignment: .leading)
                .padding(.horizontal, 20)
                .padding(.top, 25)
                .padding(.bottom, 45)
                .frame(maxWidth: .infinity)
            }
            .scrollDismissesKeyboard(.interactively)
            .background(Theme.canvas)
            .toolbar(.hidden, for: .navigationBar)
            .sheet(isPresented: $showingInfo) {
                AboutView()
                    .environment(\.locale, Locale(identifier: "de_DE"))
            }
        }
    }

    private var header: some View {
        VStack(alignment: .leading, spacing: 18) {
            HStack(alignment: .firstTextBaseline) {
                Text("Textstufe")
                    .font(.system(size: 32, weight: .bold, design: .serif))
                    .foregroundStyle(Theme.ink)
                Spacer()
                Button { showingInfo = true } label: {
                    Image(systemName: "info.circle")
                        .font(.title3)
                        .accessibilityLabel("Über die Einschätzung")
                }
            }
            VStack(alignment: .leading, spacing: 7) {
                Text("Wie schwer ist dein Text?")
                    .font(.system(.largeTitle, design: .serif, weight: .bold))
                    .fixedSize(horizontal: false, vertical: true)
                Text("Deutsche Lesetexte offline einschätzen.")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
        }
    }

    private var editor: some View {
        VStack(alignment: .leading, spacing: 13) {
            HStack(alignment: .firstTextBaseline) {
                Text("Dein deutscher Text")
                    .font(.system(.title3, design: .serif, weight: .bold))
                Spacer()
                Button("Beispiel") { loadExample() }
                    .font(.subheadline.weight(.semibold))
                Button("Leeren") { clear() }
                    .font(.subheadline)
                    .disabled(input.isEmpty)
            }
            ZStack(alignment: .topLeading) {
                RoundedRectangle(cornerRadius: 14)
                    .fill(Color(uiColor: .systemBackground))
                RoundedRectangle(cornerRadius: 14)
                    .strokeBorder(inputFocused ? Theme.forest : Theme.separator, lineWidth: inputFocused ? 2 : 1)
                if input.isEmpty {
                    Text("Füge hier einen deutschen Text ein …")
                        .foregroundStyle(.tertiary)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 17)
                        .allowsHitTesting(false)
                }
                TextEditor(text: $input)
                    .font(.body)
                    .lineSpacing(5)
                    .scrollContentBackground(.hidden)
                    .padding(11)
                    .focused($inputFocused)
                    .accessibilityLabel("Deutscher Text")
            }
            .frame(height: 230)
            .onChange(of: input) { _, newValue in
                if newValue.count > maxCharacters { input = String(newValue.prefix(maxCharacters)) }
                assessment = nil
            }
            HStack(alignment: .firstTextBaseline) {
                Text("\(input.count.formatted()) / \(maxCharacters.formatted()) Zeichen")
                Spacer()
                Text("Mindestens 50 Wörter und 3 Sätze")
            }
            .font(.caption)
            .foregroundStyle(.secondary)
        }
    }

    private var emptyState: some View {
        VStack(alignment: .leading, spacing: 9) {
            Text("Bereit, wenn du es bist.")
                .font(.system(.title2, design: .serif, weight: .bold))
            Text("Gib mehrere vollständige Sätze ein und starte die Analyse. Die App benötigt keine Internetverbindung.")
                .font(.subheadline)
                .foregroundStyle(.secondary)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(22)
        .background(Theme.surface, in: RoundedRectangle(cornerRadius: 20))
    }

    private var explanation: some View {
        VStack(alignment: .leading, spacing: 10) {
            Divider()
            Text("Was sagt das Ergebnis aus?")
                .font(.system(.title3, design: .serif, weight: .bold))
            Text("Das Niveau beschreibt nur die grobe Leseschwierigkeit. Die Auswertung berücksichtigt Wortschatz, Wortlängen und Satzlängen. Sie misst nicht deine persönliche Sprachkompetenz und ist keine GER-Zertifizierung.")
                .font(.subheadline)
                .foregroundStyle(.secondary)
            Button("Methode und Datenschutz") { showingInfo = true }
                .font(.subheadline.weight(.semibold))
        }
    }

    private func analyze() {
        let submitted = input
        inputFocused = false
        isAnalyzing = true
        assessment = nil
        Task {
            let outcome = await Task.detached(priority: .userInitiated) {
                GermanTextAnalyzer.analyze(submitted)
            }.value
            guard submitted == input else { isAnalyzing = false; return }
            assessment = outcome
            isAnalyzing = false
        }
    }

    private func clear() {
        input = ""
        assessment = nil
        inputFocused = false
    }

    private func loadExample() {
        input = SampleTexts.german
        assessment = nil
        inputFocused = false
    }
}

#Preview {
    ContentView()
        .environment(\.locale, Locale(identifier: "de_DE"))
}
