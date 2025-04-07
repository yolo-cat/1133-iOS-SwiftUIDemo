import SwiftUI

struct MoodTracker: View {
    @State private var tapCount: Int = 0

    var emoji: String {
        switch tapCount {
        case 0...5:
            return "😊"
        case 6...10:
            return "😄"
        case 11...15:
            return "🤯"
        case 16...20:
            return "😡"
        default:
            return "🤬"
        }
    }

    var body: some View {
        VStack {
            Text(emoji)
                .font(.system(size: 72))

            Text("""
                You have tapped ^[\(tapCount) time](inflect: true)
                """)

            Button("Tap me") {
                tapCount += 1
            }
            Button("Reset on a new day!") {
                tapCount = 0
            }
            .opacity(Double(tapCount) / 20.0)
            .animation(.linear, value: tapCount)
        }
    }
}

#Preview {
    MoodTracker()
}
