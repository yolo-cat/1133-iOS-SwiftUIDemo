import SwiftUI

extension Color {
    static let americanPurple = Color(red: 0.25, green: 0.12, blue: 0.31)
    static let hanBlue = Color(red: 0.35, green: 0.42, blue: 0.76)
    static let jasperOrange = Color(red: 0.85, green: 0.57, blue: 0.29)
    static let rougePink = Color(red: 0.80, green: 0.36, blue: 0.49)
    static let vistaBlue = Color(red: 0.50, green: 0.59, blue: 0.91)
}

struct Color_Demo: View {
    var body: some View {
        HStack(spacing: 0) {
            Color.americanPurple
            Color.hanBlue
            Color.jasperOrange
            Color.rougePink
            Color.vistaBlue
        }
    }
}

#Preview("System Blue") {
    Color.blue
        .ignoresSafeArea()
}

#Preview("Custom Colors") {
    Color_Demo()
        .ignoresSafeArea()
}

#Preview("Mix Color") {
    HStack {
        Color.yellow
        Color.yellow.mix(with: .red, by: 0.5)
        Color.red
    }
    .ignoresSafeArea()
}

#Preview("Gradient") {
    Rectangle()
        .fill(Color.blue.gradient)
        .ignoresSafeArea()
}
