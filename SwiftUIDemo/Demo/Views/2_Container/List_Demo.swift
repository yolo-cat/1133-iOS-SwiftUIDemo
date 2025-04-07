import SwiftUI

struct List_Demo: View {
    var body: some View {
        List {
            Text("SwiftUI Fundamentals")
            Text("Thinking in SwiftUI")
            Text("SwiftUI Cookbook")
            Text("Mastering SwiftUI")
            Text("SwiftUI for Masterminds")
        }
    }
}

#Preview {
    List_Demo()
}
