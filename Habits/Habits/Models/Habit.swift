//
//  Habit.swift
//  Habits
//
//  Created by Rory Farwell on 26/05/2024.
//

import Foundation

class Habit: Identifiable, ObservableObject {
    private(set) var category: String
    private(set) var title: String
    private(set) var description: String
    private(set) var completionGoal: Int
    private(set) var completedDates: [Date]
    
    init(category: String, title: String, description: String, completionGoal: Int) {
        self.category = category
        self.title = title
        self.description = description
        self.completionGoal = completionGoal
        self.completedDates = [Date]()
    }
    
    static let defaultHabit = Habit(category: "Chore", title: "Make bed", description: "Make the bed in the morning", completionGoal: 365)
}
