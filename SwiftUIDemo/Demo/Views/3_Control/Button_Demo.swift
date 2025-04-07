import SwiftUI

struct Button_Demo: View {
    var body: some View {
        Button {
            // save book to favorites
        } label: {
            Label("Add to Favorites", systemImage: "star")
                .foregroundStyle(.black)
                .padding()
                .background(.yellow, in: Capsule())
        }
    }
}

#Preview {
    Button_Demo()
}
