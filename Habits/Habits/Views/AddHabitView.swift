//
//  AddHabitSheet.swift
//  Habits
//
//  Created by Rory Farwell on 28/05/2024.
//

import SwiftUI

struct AddHabitView: View {
    @Environment(\.dismiss) var dismiss
    @State private var habitName: String = ""
    @State private var habitDesc: String = ""
    @State private var habitCategory: String = ""
    @State private var completionGoalInt: Float = 60
    var addAction: (Habit) -> Void
    
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Name", text: $habitName)
                }
                
                Section("Details") {
                    TextField("Description", text: $habitDesc)
                    TextField("Category", text: $habitName)
                    
                    VStack {
                        HStack {
                            Text("Completion goal: \(completionGoalInt.formatted()) days")
                            Spacer()
                        }
                        Slider(value: $completionGoalInt, in: 5...365, step: 5)
                    }
                }
            }
            .navigationTitle("Add Habit")
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Add", systemImage: "plus") {
                        let habit = Habit(category: habitCategory,
                                          title: habitName,
                                          description: habitDesc,
                                          completionGoal: Int(completionGoalInt))
                        addAction(habit)
                        dismiss()
                    }
                }
                
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel", systemImage: "xmark") {
                        dismiss()
                    }
                }
            }
        }
    }
}

#Preview {
    let add: (Habit) -> Void = {_ in
            return
    }
    return AddHabitView(addAction: add)
}
