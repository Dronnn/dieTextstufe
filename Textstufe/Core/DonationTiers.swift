import Foundation

/// Optional consumable tips. Donations unlock nothing.
struct DonationTier: Identifiable, Equatable, Sendable {
    let id: String
    /// Localization key for the tier name.
    let nameKey: String
    let fallbackPrice: String

    static let all: [DonationTier] = [
        DonationTier(id: "com.mrmaier.textstufe.tip.small", nameKey: "donations.tier.small", fallbackPrice: "$2.99"),
        DonationTier(id: "com.mrmaier.textstufe.tip.medium", nameKey: "donations.tier.medium", fallbackPrice: "$4.99"),
        DonationTier(id: "com.mrmaier.textstufe.tip.large", nameKey: "donations.tier.large", fallbackPrice: "$7.99"),
        DonationTier(id: "com.mrmaier.textstufe.tip.generous", nameKey: "donations.tier.generous", fallbackPrice: "$19.99"),
        DonationTier(id: "com.mrmaier.textstufe.tip.patron", nameKey: "donations.tier.patron", fallbackPrice: "$49.99"),
        DonationTier(id: "com.mrmaier.textstufe.tip.extraordinary", nameKey: "donations.tier.extraordinary", fallbackPrice: "$99.99")
    ]
}
