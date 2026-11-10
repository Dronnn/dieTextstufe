import SwiftUI

struct AboutView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var showingSupport = false
    @State private var showingLicenses = false

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 18) {
                    section("about.offline.title", "about.offline.body")
                    section("about.method.title", "about.method.body")
                    section("about.reliability.title", "about.reliability.body")
                    section("about.minimum.title", "about.minimum.body")
                    section("about.zix.title", "about.zix.body")
                    section("about.privacy.title", "about.privacy.body")
                    Button {
                        showingSupport = true
                    } label: {
                        Label("support.button", systemImage: "heart")
                    }
                    .font(.subheadline.weight(.semibold))
                    .buttonStyle(.bordered)
                    .padding(.top, 6)

                    Button("about.licenses") {
                        showingLicenses = true
                    }
                    .font(.subheadline.weight(.semibold))
                    .buttonStyle(.plain)
                    .frame(minHeight: 44)
                }
                .padding(22)
                .frame(maxWidth: 720, alignment: .leading)
                .frame(maxWidth: .infinity)
            }
            .background(Theme.canvas)
            .navigationTitle("about.title")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("about.done") { dismiss() }
                }
            }
            .sheet(isPresented: $showingSupport) {
                SupportView()
            }
            .sheet(isPresented: $showingLicenses) {
                LicensesView()
            }
        }
    }

    private func section(_ title: LocalizedStringKey, _ text: LocalizedStringKey) -> some View {
        VStack(alignment: .leading, spacing: 7) {
            Text(title).font(.headline)
            Text(text)
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .fixedSize(horizontal: false, vertical: true)
        }
    }
}

#Preview {
    AboutView()
}
