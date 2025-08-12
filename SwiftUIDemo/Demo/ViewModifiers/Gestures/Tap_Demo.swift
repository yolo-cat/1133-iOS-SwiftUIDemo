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


struct Tap_Demo2: View {
    @State private var isTapped2: Bool = false
    @State private var isLongPressGesture: Bool = false

    var body: some View {
        Image("pencake")
            .resizable()
            .scaledToFit()
            .frame(width: isTapped2 ? 300 : 200)
            .animation(.default, value: isTapped2)
        
            .onLongPressGesture {
                print("Long Pressed")
                isLongPressGesture.toggle()

            }
            
            .onTapGesture(count:1) {
                isTapped2.toggle()
            }
            .onTapGesture(count:2) {
//                withAnimation(
//                    .default
//                ) {
                    isTapped2.toggle()
//                }
            }

    }
}

#Preview("Tap to zoom2") {
    Tap_Demo2()
}

#Preview("Zoomable") {
    Image("pencake")
        .resizable()
        .scaledToFit()
        .rounded()
        .frame(width: 200)
        .zoomable()
}
