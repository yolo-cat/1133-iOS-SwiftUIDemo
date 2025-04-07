import SwiftUI

struct StatusCard: View {
    let icon: String
    let title: String
    let count: Int?
    let color: Color

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Image(systemName: icon)
                    .foregroundColor(color)
                Spacer()
                if let count = count {
                    Text("\(count)")
                        .font(.title2)
                        .fontWeight(.semibold)
                }
            }
            Text(title)
                .font(.caption)
                .foregroundStyle(.secondary)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .fontDesign(.rounded)
    }
}

#Preview {
    List {
        Grid(horizontalSpacing: 16, verticalSpacing: 16) {
            GridRow {
                StatusCard(icon: "clock", title: "Today", count: 5, color: .blue)
                StatusCard(icon: "calendar", title: "Scheduled", count: 12, color: .red)
            }
        }
        .listRowBackground(Color.clear)
    }
}
