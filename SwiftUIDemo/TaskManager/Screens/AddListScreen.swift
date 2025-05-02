import SwiftUI

struct AddListScreen: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        /// Reference examples in ``NavigationStack_Demo``
        NavigationStack {
            Text("Add a new List")
                .toolbar {
                    ToolbarItem {
                        Button("Done") {
                            dismiss()
                        }
                    }
                }
        }
    }
}

private struct AddListScreenDemo: View {
    @State private var isPresented = true

    var body: some View {
        Button(action: {
            isPresented.toggle()
        }, label: {
            Text("Tap me!")
        })
        /// Refer to the examples in ``Sheet_Demo``
        .sheet(isPresented: $isPresented) {
            AddListScreen()
        }
    }
}

#Preview {
    AddListScreenDemo()
}
