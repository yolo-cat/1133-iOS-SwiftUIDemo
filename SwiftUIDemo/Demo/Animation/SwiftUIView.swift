import SwiftUI

struct SwiftUIView: View {
    @State private var count = 99
    @State private var count2 = 102

    var body: some View {
        /// Reference to ``VStack_Demo``
        VStack(spacing: 16) {
            /// Reference to ``Text_Demo``
            Text("\(count)")
                .font(.largeTitle)
                .contentTransition(.numericText())

            /// Reference to ``Button_Demo``
            Button("Increment") {
                withAnimation {
                    count += 1
                }
            }

            Divider()

            /// Reference to ``Text_Demo``
            Text("\(count2)")
                .font(.largeTitle)
                .contentTransition(.numericText(countsDown: true))

            /// Reference to ``Button_Demo``
            Button("Decrement") {
                withAnimation {
                    count2 -= 1
                }
            }
        }
    }
}

#Preview {
    SwiftUIView()
}
