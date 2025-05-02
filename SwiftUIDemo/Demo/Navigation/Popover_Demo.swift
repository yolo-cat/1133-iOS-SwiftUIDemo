import SwiftUI

struct Popover_Demo: View {
    @State private var isShowing = false

    var body: some View {
        /// Refer to the examples in ``VStack_Demo``
        VStack {
            Button {
                isShowing = true
            } label: {
                Text("Show Popover")
            }
        }
        .popover(
            isPresented: $isShowing,
            attachmentAnchor: .point(.top),
            arrowEdge: .bottom
        ) {
            Text("Detail")
                .padding()
                .presentationCompactAdaptation(.none)
        }
    }
}

#Preview {
    Popover_Demo()
}
