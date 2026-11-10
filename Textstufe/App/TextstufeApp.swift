import SwiftUI

@main
struct TextstufeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .tint(Theme.ink)
                .environment(\.locale, Locale(identifier: "de_DE"))
        }
    }
}
