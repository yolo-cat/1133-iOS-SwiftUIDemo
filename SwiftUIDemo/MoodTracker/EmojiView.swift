import SwiftUI

struct EmojiScreen: View {
    @State private var showsEmoji: Bool = false

    var body: some View {
        ScrollView {
            Button("Show Emoji") {
                showsEmoji.toggle()
            }

            EmojiView()
                .opacity(showsEmoji ? 1 : 0)
                .animation(.default, value: showsEmoji)

            if showsEmoji {
                EmojiView()
                    .animation(.default, value: showsEmoji)
            }
        }
    }
}

struct EmojiView: View {
    var body: some View {
        Text("😀")
            .font(.system(size: 72))
    }
}

#Preview {
    EmojiScreen()
}
