import SwiftUI

struct TextAnimationView: View {
    @State private var count = 99

    var body: some View {
        let _ = Self._printChanges()
        /// Reference to ``VStack_Demo``
        VStack(spacing: 16) {
            /// Reference to ``Text_Demo``
            Text("\(count)")
                .font(.largeTitle)

            /// Reference to ``Button_Demo``
            Button("Increment") {
                count += 1
            }
        }
    }
}

#Preview {
    TextAnimationView()
}
