import SwiftUI

struct Tap_Demo: View {
    @State private var isTapped: Bool = false

    var body: some View {
        Image("pencake")
            .resizable()
            .scaledToFit()
            .frame(width: isTapped ? 300 : 200)
            .onTapGesture {
                isTapped.toggle()
            }
    }
}

#Preview("Tap to zoom") {
    Tap_Demo()
}

#Preview("Zoomable") {
    Image("pencake")
        .resizable()
        .scaledToFit()
        .rounded()
        .frame(width: 200)
        .zoomable()
}
