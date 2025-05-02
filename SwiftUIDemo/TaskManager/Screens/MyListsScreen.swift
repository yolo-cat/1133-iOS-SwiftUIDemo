import SwiftUI

struct MyListsScreen: View {
    @State private var searchText: String = ""
    @State private var isShowingDetail: Bool = false
    @State private var showAddList: Bool = false

    var body: some View {
        /// Reference examples in ``NavigationStack_Demo``
        NavigationStack {
            List {
                // Quick Actions
                QuickActionsView()

                // My Lists
                MyListsView()
            }
            .navigation()
            .searchable(text: $searchText)
            .safeAreaInset(edge: .bottom) {
                BottomView(showAddList: $showAddList)
            }
            /// Refer to the examples in ``Sheet_Demo``
            .sheet(isPresented: $showAddList) {
                AddListScreen()
            }
        }
    }
}

extension View {
    func navigation() -> some View {
        self
            .navigationTitle("Lists")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Menu {
                        Button {

                        } label: {
                            Label("Edit Lists", systemImage: "pencil")
                        }
                    } label: {
                        Image(systemName: "ellipsis.circle")
                    }

                }
            }
            .navigationDestination(for: UUID.self) { value in
                DetailScreen()
            }
    }
}

#Preview {
    MyListsScreen()
}
