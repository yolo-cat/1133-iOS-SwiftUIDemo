import SwiftUI

struct Circle_Demo: View {
    var body: some View {
        Circle()
            .fill(Color.red)

        Circle()
            .frame(width: 40, height: 40)

        Circle()
            .stroke(Color.red, lineWidth: 10)
    }
}

#Preview {
    Circle_Demo()
        .padding()
}
