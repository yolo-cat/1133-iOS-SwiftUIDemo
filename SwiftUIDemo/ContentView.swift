import SwiftUI

struct ContentView: View {
    var body: some View {
        /// Refer to the examples in ``VStack_Demo``
        VStack {
            /// Refer to the examples in ``Image_Demo``
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            /// Refer to the examples in ``Text_Demo``
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
