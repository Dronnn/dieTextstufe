import SwiftUI

struct LicensesView: View {
    @Environment(\.dismiss) private var dismiss

    private var notice: String {
        guard let url = Bundle.main.url(forResource: "THIRD_PARTY_NOTICES", withExtension: "md"),
              let text = try? String(contentsOf: url, encoding: .utf8)
        else { return "" }
        return text
    }

    var body: some View {
        NavigationStack {
            ScrollView {
                Text(verbatim: notice)
                    .font(.footnote.monospaced())
                    .textSelection(.enabled)
                    .frame(maxWidth: 720, alignment: .leading)
                    .padding(22)
                    .frame(maxWidth: .infinity)
            }
            .background(Theme.canvas)
            .navigationTitle("licenses.title")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("about.done") { dismiss() }
                }
            }
        }
    }
}

#Preview {
    LicensesView()
}
