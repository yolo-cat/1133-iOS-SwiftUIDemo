import SwiftUI

struct Shape_Demo: View {
    var body: some View {
        /// Jump to ``Circle_Demo``
        Circle()
            .stroke(lineWidth: 2)
            .padding()
            .border(Color.red)

        Divider()

        Circle()
            .border(Color.red)
    }
}

#Preview {
    Shape_Demo()
        .frame(width: 250, height: 250)
}
