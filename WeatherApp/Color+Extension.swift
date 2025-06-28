import SwiftUI

extension Color {
    static let theme = ColorTheme()
}

struct ColorTheme {

    let accent = Color.white
    let secondaryText = Color.white.opacity(0.8)

    let backgroundStart = Color.blue
    let backgroundEnd = Color.cyan
}
