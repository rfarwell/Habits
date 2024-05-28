//
//  HomeView.swift
//  Habits
//
//  Created by Rory Farwell on 26/05/2024.
//

import SwiftUI

/**
 View to display the habits
 */
struct HomeView: View {
    @State private var habits: [Habit] = [Habit]()
    @State private var showingAddHabitSheet = false;
    
    var body: some View {
        VStack {
            ScrollView {
                ForEach(habits) {habit in
                    HabitRowView(habit: habit)
                }
            }
        }
        .navigationTitle("HabitWise")
        .padding()
        .sheet(isPresented: $showingAddHabitSheet) {
            AddHabitView(addAction: addHabit(habit:))
        }
        .toolbar {
            Button("Add default habits") {
                habits.append(Habit(category: "Test",
                                    title: "Title",
                                    description: "Description",
                                    completionGoal: 10))
            }
            Button("Add custom habit") {
                showingAddHabitSheet.toggle()
            }
        }
    }
    
    func addHabit(habit: Habit) {
        habits.append(habit)
    }
    
    func replaceHabit() {
        //todo this will be used when editing a habit - from the habit detail view
    }
    
    func deleteHabit() {
        //todo this will be used when deleting a habit - from the habit detail view
    }
}

#Preview {
    NavigationStack {
        HomeView()
    }
}
