import SwiftUI

struct Toggle_Demo: View {
    @State private var isOn = false

    var body: some View {
        Text("Toggled? \(isOn)")

        Toggle("Toggle", isOn: $isOn)

        Toggle("Toggle", isOn: $isOn)
            .toggleStyle(.button)
    }
}

#Preview {
    Toggle_Demo()
        .padding()
}
