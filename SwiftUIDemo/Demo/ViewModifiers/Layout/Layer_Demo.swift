import SwiftUI

struct Layer_Demo: View {
    var body: some View {
        HStack {
            Text("SwiftUI")
                .background(Color.red)

            Text("SwiftUI")
                .overlay(Color.red)

            Text("SwiftUI")
                .border(Color.red)
        }
    }
}

#Preview {
    Layer_Demo()
}
