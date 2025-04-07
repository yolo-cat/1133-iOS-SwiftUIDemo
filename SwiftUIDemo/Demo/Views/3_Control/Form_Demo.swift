import SwiftUI

struct Form_Demo: View {
    @State private var preferredTheme: String = ""
    @State private var notificationsEnabled: Bool = false

    var body: some View {
        Form {
            TextField(
                "Preferred appearance",
                text: $preferredTheme
            )
            Toggle(
                "Turn on notifications",
                isOn: $notificationsEnabled
            )
            Button("Save Settings") {
                // save settings
            }
        }
    }
}

#Preview {
    Form_Demo()
}
