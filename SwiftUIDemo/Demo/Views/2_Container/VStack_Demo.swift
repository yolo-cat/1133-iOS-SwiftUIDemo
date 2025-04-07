import SwiftUI

private struct VStack_Demo: View {
    var body: some View {
        VStack {
            Text("Movies of the Year")
                .font(.headline)
            Text("Top picks from our collection")
                .font(.subheadline)
        }
    }
}

#Preview {
    VStack_Demo()
}
