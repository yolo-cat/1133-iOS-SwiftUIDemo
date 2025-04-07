import SwiftUI

struct TextField_Demo: View {
    @State private var text = ""

    var body: some View {
        TextField("", text: $text, prompt: Text("Placeholder"))
            .padding()
            .border(Color.gray)
    }
}

#Preview {
    TextField_Demo()
}
