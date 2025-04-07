import SwiftUI

struct Layout_Demo: View {
    var body: some View {
        HStack {
            Circle()
                .frame(width: 100, height: 100)

            Spacer()

            Rectangle()
                .frame(width: 100, height: 100)
        }
        .padding()
        .foregroundStyle(.red)
        .border(Color.blue)
    }
}

#Preview {
    Layout_Demo()
}

#Preview("View Modifier Order") {
    HStack {
        Text("View Modifier Order")
            .padding()
            .background(Color.green)  // <-- after padding
            .border(Color.blue)

        Text("View Modifier Order")
            .background(Color.green)  // <-- before padding
            .padding()
            .border(Color.blue)
    }
}
