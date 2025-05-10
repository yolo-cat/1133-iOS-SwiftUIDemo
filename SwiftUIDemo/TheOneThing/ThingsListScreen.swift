import SwiftUI

@Observable
class Thing: Identifiable, Equatable {
    let id = UUID()
    let title: String
    var isCompleted: Bool
    
    init(title: String, isCompleted: Bool) {
        self.title = title
        self.isCompleted = isCompleted
    }
    
    static func == (lhs: Thing, rhs: Thing) -> Bool {
        lhs.id == rhs.id
    }
}

@Observable
class ThingsListModel {
    var tasks: [Thing] = [
        Thing(title: "Read chapter 1 of book", isCompleted: true),
        Thing(title: "Send email to client", isCompleted: true),
        Thing(title: "Schedule doctor appointment", isCompleted: true),
        Thing(title: "Finish project proposal", isCompleted: false)
    ]
    var newTaskText = ""
    
    var hasUncompletedTask: Bool {
        tasks.contains(where: { !$0.isCompleted })
    }
    
    func addTask() {
        guard !newTaskText.isEmpty else { return }
        guard !hasUncompletedTask else { return }
        
        tasks.append(Thing(title: newTaskText, isCompleted: false))
        newTaskText = ""
    }
    
    func toggleTask(_ task: Thing) {
        if let index = tasks.firstIndex(where: { $0.id == task.id }) {
            // If we're trying to mark a task as incomplete when another one is already incomplete, ignore
            if task.isCompleted && hasUncompletedTask {
                return
            }
            tasks[index].isCompleted.toggle()
        }
    }
}

struct ThingsListScreen: View {
    @State var model = ThingsListModel()
    @State var isShowingPopover = false

    var body: some View {
        VStack(spacing: 0) {
            Text("The One Thing")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            
            List {
                ForEach(model.tasks) { task in
                    TaskRow(task: task, isLatest: task == model.tasks.last, onToggle: {
                        model.toggleTask(task)
                    })
                }
            }
            .listStyle(.plain)
            
            VStack(spacing: 10) {
                HStack {
                    TextField("Add your next task...", text: $model.newTaskText)
                        .padding(12)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                        )
                        .accessibilityLabel("New task input")
                    
                    Button("Add") {
                        model.addTask()
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 12)
                    .background(Color.blue)
                    .foregroundStyle(model.hasUncompletedTask ? .gray : .white)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .disabled(model.hasUncompletedTask)
                    .accessibilityLabel("Add task")
                    .accessibilityHint("Add a new task to the list")
                }
            }
            .padding()
            .background(Color.white)
        }
    }
}

struct TaskRow: View {
    let task: Thing
    let isLatest: Bool
    let onToggle: () -> Void
    
    var body: some View {
        HStack {
            Button(action: onToggle) {
                ZStack {
                    Circle()
                        .strokeBorder(Color.blue, lineWidth: 2)
                        .frame(width: 24, height: 24)
                    
                    if task.isCompleted {
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 24, height: 24)
                        
                        Image(systemName: "checkmark")
                            .foregroundColor(.white)
                            .font(.system(size: 12, weight: .bold))
                    }
                }
            }
            .buttonStyle(.plain)
            .accessibilityLabel(task.isCompleted ? "Mark as incomplete" : "Mark as complete")
            
            Text(task.title)
                .strikethrough(task.isCompleted)
                .foregroundColor(task.isCompleted ? .gray : .primary)
        }
        .padding(.vertical, 8)
        .listRowBackground(isLatest ? Color.blue.opacity(0.1) : Color.clear)
    }
}

#Preview {
    ThingsListScreen()
}
