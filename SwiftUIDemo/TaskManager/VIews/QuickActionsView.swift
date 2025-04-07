import SwiftUI

struct QuickActionsView: View {
    var body: some View {
        Section {
            Grid(horizontalSpacing: 16, verticalSpacing: 16) {
                GridRow {
                    StatusCard(icon: "clock", title: "Today", count: 5, color: .blue)
                    StatusCard(icon: "calendar", title: "Scheduled", count: 12, color: .red)
                }
                GridRow {
                    StatusCard(icon: "tray", title: "All", count: 36, color: .black)
                    StatusCard(icon: "flag", title: "Flagged", count: 2, color: .orange)
                }
                GridRow {
                    StatusCard(icon: "checkmark.circle", title: "Completed", count: nil, color: .gray)
                        .gridCellColumns(2)
                }
            }
            .padding(.vertical, 8)
        }
        .listRowInsets(EdgeInsets())
        .listRowBackground(Color.clear)
    }
}

#Preview {
    List {
        QuickActionsView()
    }
}
