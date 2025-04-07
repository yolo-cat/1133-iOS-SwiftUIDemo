import SwiftUI

struct ZStack_Demo: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(.yellow)
            Image(systemName: "star")
                .foregroundStyle(.black)
        }
    }
}

#Preview {
    ZStack_Demo()
        .frame(width: 48, height: 48)
}
