//
//  HabitRowView.swift
//  Habits
//
//  Created by Rory Farwell on 28/05/2024.
//

import SwiftUI

struct HabitRowView: View {
    @Environment(\.colorScheme) var colorScheme
    
    
    let habit: Habit
    
    var rowColor: Color {
        colorScheme == .dark ? Color.darkModeRowColor : Color.lightModeRowColor
    }
    
    var body: some View {
        VStack {
            HStack {
                Text(habit.title)
                    .bold()
                Spacer()
                Text("\(habit.completedDates.count)/\(habit.completionGoal)")
            }
            .padding()
            
        }
        .background(rowColor)
        .clipShape(.rect(cornerRadius: 10))
        
    }
}

private extension Color {
    static let lightModeRowColor: Color = Color(.systemGray6)
//    static let lightModeRowColor: Color = Color(red: 1, green: 0, blue: 1)
    static let darkModeRowColor: Color = Color(.systemGray3)
}

#Preview {
    HabitRowView(habit: Habit.defaultHabit)
        .preferredColorScheme(.light)
}

#Preview {
    HabitRowView(habit: Habit.defaultHabit)
        .preferredColorScheme(.dark)
}
