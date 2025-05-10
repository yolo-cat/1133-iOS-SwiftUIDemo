import SwiftUI
import Observation

@Observable
class CounterModel {
    var text: String = "Hello, World!"
    var count: Int = 0
}

struct BindableCounter: View {
    @Bindable var model: CounterModel

    var body: some View {
        TextField("", text: $model.text)
            .padding()
    }
}

struct CounterEnvironment: View {
    @Environment(CounterModel.self) private var model

    var body: some View {
        @Bindable var model = model

        TextField("", text: $model.text)
            .padding()

        Text("Counter: \(model.count)")

        Button("Increment") {
            model.count += 1
        }
    }
}

#Preview {
    CounterEnvironment()
        .font(.largeTitle)
        .environment(CounterModel())
}
