import SwiftUI

struct ContentView: View {
    @State private var input = ""
    @State private var assessment: Assessment?
    @State private var isAnalyzing = false
    @State private var activeSheet: Sheet?
    @State private var marketingShot = false
    @FocusState private var inputFocused: Bool

    private let maxCharacters = 20_000

    private enum Sheet: String, Identifiable {
        case about
        case support
        var id: String { rawValue }
    }

    var body: some View {
        NavigationStack {
            ScrollViewReader { proxy in
            ScrollView {
                VStack(alignment: .leading, spacing: 26) {
                    if !marketingShot {
                        header
                        editor
                        analyzeButton
                    }
                    if let assessment {
                        AssessmentView(assessment: assessment)
                            .id("result")
                    } else if !marketingShot {
                        emptyState
                    }
                    if !marketingShot {
                        explanation
                        supportButton
                    } else {
                        explanation
                    }
                }
                .frame(maxWidth: 720, alignment: .leading)
                .padding(.horizontal, 20)
                .padding(.top, 25)
                .padding(.bottom, 45)
                .frame(maxWidth: .infinity)
            }
            .scrollDismissesKeyboard(.interactively)
            #if DEBUG
            .onChange(of: assessment) { _, newValue in
                guard newValue != nil, let demo = ProcessInfo.processInfo.environment["TEXTSTUFE_DEMO"] else { return }
                let anchor: UnitPoint = demo == "detail-bottom" ? .bottom : .top
                Task { @MainActor in
                    try? await Task.sleep(for: .milliseconds(350))
                    proxy.scrollTo("result", anchor: anchor)
                }
            }
            #endif
            .background(Theme.canvas)
            .toolbar(.hidden, for: .navigationBar)
            .sheet(item: $activeSheet) { sheet in
                switch sheet {
                case .about:
                    AboutView()
                case .support:
                    SupportView()
                }
            }
            #if DEBUG
            .onAppear(perform: handleDemoArguments)
            #endif
            }
        }
    }

    #if DEBUG
    private func handleDemoArguments() {
        switch ProcessInfo.processInfo.environment["TEXTSTUFE_DEMO"] {
        case "detail", "detail-bottom", "marketing":
            input = SampleTexts.german
            marketingShot = true
            analyze()
        case "compose":
            input = SampleTexts.german
        case "support":
            activeSheet = .support
        case "about":
            activeSheet = .about
        default:
            break
        }
    }
    #endif

    private var header: some View {
        VStack(alignment: .leading, spacing: 18) {
            HStack(alignment: .firstTextBaseline) {
                Text(verbatim: "Textstufe")
                    .font(.system(size: 32, weight: .bold, design: .rounded))
                    .foregroundStyle(Theme.ink)
                Spacer()
                Button { activeSheet = .support } label: {
                    Image(systemName: "heart.circle")
                        .font(.title3)
                        .accessibilityLabel(Text("support.button"))
                }
                .padding(.trailing, 10)
                Button { activeSheet = .about } label: {
                    Image(systemName: "info.circle")
                        .font(.title3)
                        .accessibilityLabel(Text("header.info"))
                }
            }
            VStack(alignment: .leading, spacing: 7) {
                Text("header.question")
                    .font(.system(.largeTitle, design: .rounded, weight: .bold))
                    .fixedSize(horizontal: false, vertical: true)
                Text("header.subtitle")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
        }
    }

    private var editor: some View {
        VStack(alignment: .leading, spacing: 13) {
            HStack(alignment: .firstTextBaseline) {
                Text("editor.title")
                    .font(.system(.title3, design: .rounded, weight: .bold))
                Spacer()
                Button("editor.example") { loadExample() }
                    .font(.subheadline.weight(.semibold))
                Button("editor.clear") { clear() }
                    .font(.subheadline)
                    .disabled(input.isEmpty)
            }
            ZStack(alignment: .topLeading) {
                RoundedRectangle(cornerRadius: 14)
                    .fill(Color(uiColor: .systemBackground))
                RoundedRectangle(cornerRadius: 14)
                    .strokeBorder(inputFocused ? Theme.forest : Theme.separator, lineWidth: inputFocused ? 2 : 1)
                if input.isEmpty {
                    Text("editor.placeholder")
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
                    .accessibilityLabel(Text("editor.accessibility"))
            }
            .frame(height: 230)
            .onChange(of: input) { _, newValue in
                if newValue.count > maxCharacters { input = String(newValue.prefix(maxCharacters)) }
                assessment = nil
            }
            HStack(alignment: .firstTextBaseline) {
                Text(String(format: String(localized: "editor.counter"), input.count.formatted(), maxCharacters.formatted()))
                Spacer()
                Text("editor.minimum")
            }
            .font(.caption)
            .foregroundStyle(.secondary)
        }
    }

    private var analyzeButton: some View {
        Button(action: analyze) {
            HStack(spacing: 10) {
                if isAnalyzing { ProgressView().tint(.white) }
                else { Image(systemName: "text.magnifyingglass") }
                Text(isAnalyzing ? "action.analyzing" : "action.analyze")
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
    }

    private var emptyState: some View {
        VStack(alignment: .leading, spacing: 9) {
            Text("empty.title")
                .font(.system(.title2, design: .rounded, weight: .bold))
            Text("empty.detail")
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
            Text("explanation.title")
                .font(.system(.title3, design: .rounded, weight: .bold))
            Text("explanation.body")
                .font(.subheadline)
                .foregroundStyle(.secondary)
            Button("explanation.method") { activeSheet = .about }
                .font(.subheadline.weight(.semibold))
        }
    }

    private var supportButton: some View {
        Button { activeSheet = .support } label: {
            Label("support.button", systemImage: "heart")
        }
        .font(.subheadline.weight(.semibold))
        .buttonStyle(.bordered)
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
}
