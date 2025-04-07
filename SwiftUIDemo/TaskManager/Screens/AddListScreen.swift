import SwiftUI

struct AddListScreen: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
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
        .sheet(isPresented: $isPresented) {
            AddListScreen()
        }
    }
}

#Preview {
    AddListScreenDemo()
}
