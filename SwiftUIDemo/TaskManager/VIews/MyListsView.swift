import SwiftUI

struct MyListsView: View {
    var body: some View {
        Section {
            MyListRow(name: "Groceries", taskCount: 3, color: .yellow)
            MyListRow(name: "House", taskCount: 1, color: .orange)
            MyListRow(name: "School", taskCount: 5, color: .blue)
            MyListRow(name: "Projects", taskCount: 2, color: .cyan)
            MyListRow(name: "Family", taskCount: 11, color: .red)
        } header: {
            Text("My Lists")
        }
        .textCase(nil)
    }
}

#Preview {
    List {
        MyListsView()
    }
}
