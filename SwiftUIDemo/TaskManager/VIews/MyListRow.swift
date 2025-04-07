import SwiftUI

struct MyListRow: View {
    let name: String
    let taskCount: Int
    let color: Color

    var body: some View {
        NavigationLink(value: UUID()) {
            HStack {
                Image(systemName: "list.bullet.circle.fill")
                    .font(.system(size: 32))
                    .foregroundStyle(color)
                Text(name)
                Spacer()
                Text("\(taskCount)")
                    .foregroundStyle(Color.secondary)
            }
        }
        .listRowInsets(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
    }
}

#Preview {
    NavigationStack {
        List {
            MyListRow(name: "Groceries", taskCount: 3, color: .yellow)
        }
        .navigationDestination(for: UUID.self) { value in
            DetailScreen()
        }
    }
}
