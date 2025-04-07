import SwiftUI

struct Grid_Demo: View {
    var body: some View {
        Grid(
            alignment: .leading,
            horizontalSpacing: 24,
            verticalSpacing: 12
        ) {
            GridRow {
                Image(systemName: "play.square.fill")
                    .foregroundStyle(.red)
                Text("Watch Now")
            }
            GridRow {
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
                Text("Favorites")
            }
        }
    }
}

#Preview {
    Grid_Demo()
}
