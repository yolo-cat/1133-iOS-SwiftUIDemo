import SwiftUI

extension View {
    func rounded(cornerRadius: Double = 8) -> some View {
        clipShape(
            RoundedRectangle(
                cornerRadius: cornerRadius,
                style: .continuous
            )
        )
    }
}
