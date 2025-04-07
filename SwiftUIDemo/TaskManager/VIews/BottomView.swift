import SwiftUI

struct BottomView: View {
    @Binding var showAddList: Bool

    var body: some View {
        HStack {
            Spacer()
            
            Button {
                showAddList = true
            } label: {
                VStack {
                    Text("Add List")
                }
            }
        }
        .ignoresSafeArea()
        .padding(.horizontal)
        .padding(.top)
        .background(Color.gray.opacity(0.05))
        .overlay(alignment: .top) {
            Rectangle()
                .frame(height: 1)
                .foregroundStyle(Color.gray.quaternary)
        }
    }
}
