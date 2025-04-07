import SwiftUI

struct ScrollView_Demo: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("SwiftUI Fundamentals")
                Text("Thinking in SwiftUI")
                Text("SwiftUI Cookbook")
                Text("Mastering SwiftUI")
                Text("SwiftUI for Masterminds")
            }
        }
    }
}

#Preview {
    ScrollView_Demo()
}
