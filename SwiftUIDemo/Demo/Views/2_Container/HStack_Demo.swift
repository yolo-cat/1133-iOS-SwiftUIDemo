import SwiftUI

struct HStack_Demo: View {
    var body: some View {
        HStack {
            Image(systemName: "star")
                .foregroundStyle(.yellow)
            Text("Favorites")
        }
    }
}

#Preview {
    HStack_Demo()
}
