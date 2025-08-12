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

#Preview("Navigation") {
    NavigationStack_Demo()
}

/// Navigation Path
struct NavigationStack_Demo2: View {
    @State private var path: [String] = []

    var body: some View {
        NavigationStack(path: $path) {
            List {
                NavigationLink(value: "Detail") {
                    Text("Show Detail")
                }
            }
            .navigationTitle("Actions")
            .navigationDestination(for: String.self) { value in
                VStack {
                    Text("Detail View")

                    Button("Push") {
                        path.append("Detail")
                    }

                    if path.count >= 3 {
                        Button("Pop to root") {
                            path = []
                        }
                    }
                }
            }
        }
    }
}

#Preview("NavigationPath") {
    NavigationStack_Demo()
}
