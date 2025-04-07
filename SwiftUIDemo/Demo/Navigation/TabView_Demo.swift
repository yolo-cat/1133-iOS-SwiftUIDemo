import SwiftUI

struct TabView_Demo: View {
    var body: some View {
        TabView {
            Tab("Map", systemImage: "map") {
                Text("Map")
            }
            Tab("Featured", systemImage: "star") {
                Text("Featured")
            }
            Tab("Profile", systemImage: "person") {
                Text("Profile")
            }
        }
    }
}

#Preview {
    TabView_Demo()
}
