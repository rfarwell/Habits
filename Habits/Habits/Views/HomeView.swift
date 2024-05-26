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
    
    var body: some View {
        VStack {
            ForEach(habits) {habit in
                Text(habit.title)
            }
            Spacer()
        }
        .toolbar {
            Button("Add default habits") {
                habits.append(Habit(category: "Test",
                                    title: "Title",
                                    description: "Description",
                                    completionGoal: 10))
            }
        }
    }
}

#Preview {
    NavigationStack {
        HomeView()
    }
}
