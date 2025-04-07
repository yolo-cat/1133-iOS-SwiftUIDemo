import SwiftUI

struct NavigationStack_Demo: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink(value: "Detail") {
                    Text("Show Detail")
                }
            }
            .navigationTitle("Actions")
            .navigationDestination(for: String.self) { value in
                Text("Detail View")
            }
        }
    }
}

#Preview {
    NavigationStack_Demo()
}
