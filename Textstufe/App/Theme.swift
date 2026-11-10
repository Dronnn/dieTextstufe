import SwiftUI

enum Theme {
    static let forest = Color(red: 0.09, green: 0.27, blue: 0.22)
    /// Accessible green for foreground text in either system appearance.
    static let ink = Color(uiColor: UIColor { traits in
        if traits.userInterfaceStyle == .dark {
            return UIColor(red: 0.70, green: 0.88, blue: 0.77, alpha: 1)
        }
        return UIColor(red: 0.09, green: 0.27, blue: 0.22, alpha: 1)
    })
    static let lightForest = Color(red: 0.90, green: 0.95, blue: 0.92)
    static let mutedGold = Color(red: 0.66, green: 0.45, blue: 0.21)
    static let separator = Color(uiColor: .separator)
    static let surface = Color(uiColor: .secondarySystemGroupedBackground)
    static let canvas = Color(uiColor: .systemGroupedBackground)
}
