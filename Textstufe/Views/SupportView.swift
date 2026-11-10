import StoreKit
import SwiftUI

struct SupportView: View {
    @ObservedObject private var store = DonationStore.shared
    @Environment(\.dismiss) private var dismiss

    @State private var selectedTierID = DonationTier.all[1].id
    @State private var didRequestProducts = false

    private var selectedTier: DonationTier {
        DonationTier.all.first { $0.id == selectedTierID } ?? DonationTier.all[1]
    }

    private var selectedProduct: StoreKit.Product? {
        store.product(for: selectedTier)
    }

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 18) {
                    if store.feedback == .thankYou {
                        thankYouContent
                    } else {
                        donationContent
                    }
                }
                .padding(22)
                .frame(maxWidth: 720, alignment: .leading)
                .frame(maxWidth: .infinity)
            }
            .background(Theme.canvas)
            .navigationTitle("donations.title")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("donations.done") {
                        store.clearFeedback()
                        dismiss()
                    }
                }
            }
            .safeAreaInset(edge: .bottom) {
                if store.feedback != .thankYou {
                    donateButton
                        .padding(.horizontal, 20)
                        .padding(.vertical, 12)
                        .background(.bar)
                }
            }
            .task {
                guard !didRequestProducts else { return }
                didRequestProducts = true
                await store.loadProducts()
            }
        }
    }

    private var donationContent: some View {
        VStack(alignment: .leading, spacing: 18) {
            Text("donations.headline")
                .font(.system(size: 32, weight: .bold, design: .rounded))
                .foregroundStyle(Theme.ink)
                .fixedSize(horizontal: false, vertical: true)

            Text("donations.body")
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .fixedSize(horizontal: false, vertical: true)

            Text("donations.choose")
                .font(.caption.weight(.semibold))
                .foregroundStyle(.secondary)
                .textCase(.uppercase)
                .padding(.top, 8)

            LazyVGrid(columns: [GridItem(.flexible(), spacing: 10), GridItem(.flexible())], spacing: 10) {
                ForEach(DonationTier.all) { tier in
                    DonationTierCard(
                        name: store.displayName(for: tier),
                        price: store.displayPrice(for: tier),
                        isSelected: selectedTierID == tier.id
                    ) {
                        selectedTierID = tier.id
                    }
                }
            }

            if store.isLoading && store.products.isEmpty {
                HStack(spacing: 8) {
                    ProgressView()
                    Text("donations.loading")
                        .font(.footnote)
                        .foregroundStyle(.secondary)
                }
            } else if let errorMessage = store.errorMessage, store.products.isEmpty {
                VStack(alignment: .leading, spacing: 8) {
                    Text(errorMessage)
                        .font(.footnote)
                        .foregroundStyle(.secondary)
                    Button("donations.retry") {
                        Task { await store.loadProducts(force: true) }
                    }
                    .font(.subheadline.weight(.medium))
                    .buttonStyle(.plain)
                    .frame(minHeight: 44)
                }
            }

            switch store.feedback {
            case .pending:
                Text("donations.pending")
                    .font(.footnote)
                    .foregroundStyle(.secondary)
            case .failed:
                Text("donations.failed")
                    .font(.footnote)
                    .foregroundStyle(.red)
            default:
                EmptyView()
            }

            Text("donations.priceNote")
                .font(.caption)
                .foregroundStyle(.secondary)
                .fixedSize(horizontal: false, vertical: true)
                .padding(.top, 4)
        }
    }

    private var thankYouContent: some View {
        VStack(alignment: .leading, spacing: 18) {
            Image(systemName: "heart.fill")
                .font(.system(size: 34))
                .foregroundStyle(Theme.mutedGold)
                .frame(height: 44)
                .accessibilityHidden(true)

            Text("donations.thankYou.title")
                .font(.system(size: 34, weight: .bold, design: .rounded))
                .foregroundStyle(Theme.ink)

            Text("donations.thankYou.body")
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .fixedSize(horizontal: false, vertical: true)

            Button("donations.done") {
                store.clearFeedback()
                dismiss()
            }
            .buttonStyle(.bordered)
            .padding(.top, 4)
        }
    }

    private var donateButton: some View {
        Button {
            guard let selectedProduct else { return }
            Task { await store.purchase(selectedProduct) }
        } label: {
            Text(String(
                format: String(localized: "donations.button"),
                store.displayPrice(for: selectedTier)
            ))
            .font(.headline)
            .frame(maxWidth: .infinity)
            .frame(minHeight: 50)
        }
        .buttonStyle(.plain)
        .foregroundStyle(.white)
        .background(Theme.forest, in: RoundedRectangle(cornerRadius: 13))
        .disabled(selectedProduct == nil || store.purchasingProductID != nil)
        .opacity(selectedProduct == nil || store.purchasingProductID != nil ? 0.55 : 1)
    }
}

private struct DonationTierCard: View {
    let name: String
    let price: String
    let isSelected: Bool
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            VStack(alignment: .leading, spacing: 5) {
                HStack(spacing: 4) {
                    Text(verbatim: name)
                        .font(.footnote.weight(.medium))
                        .foregroundStyle(isSelected ? Theme.ink : .secondary)
                        .lineLimit(1)
                    Spacer(minLength: 0)
                    if isSelected {
                        Image(systemName: "checkmark")
                            .font(.system(size: 12, weight: .semibold))
                            .foregroundStyle(Theme.ink)
                    }
                }
                Text(verbatim: price)
                    .font(.title3.weight(.semibold))
                    .foregroundStyle(.primary)
            }
            .padding(14)
            .frame(maxWidth: .infinity, minHeight: 76, alignment: .leading)
            .background {
                RoundedRectangle(cornerRadius: 12, style: .continuous)
                    .fill(isSelected ? Theme.forest.opacity(0.09) : Color.clear)
                    .overlay {
                        RoundedRectangle(cornerRadius: 12, style: .continuous)
                            .stroke(isSelected ? Theme.forest : Theme.separator, lineWidth: isSelected ? 1.5 : 1)
                    }
            }
            .contentShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
        }
        .buttonStyle(.plain)
        .accessibilityLabel(Text(verbatim: "\(name), \(price)"))
        .accessibilityAddTraits(isSelected ? .isSelected : [])
    }
}

#Preview {
    SupportView()
}
