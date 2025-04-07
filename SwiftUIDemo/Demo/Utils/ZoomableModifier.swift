import SwiftUI

struct ZoomableModifier: ViewModifier {
    @State private var isZoomed: Bool = false

    func body(content: Content) -> some View {
        content
            .scaleEffect(isZoomed ? 1.5 : 1)
            .animation(.spring, value: isZoomed)
            .onTapGesture(count: 2) {
                isZoomed.toggle()
            }
    }
}

extension View {
    func zoomable() -> some View {
        modifier(ZoomableModifier())
    }
}
