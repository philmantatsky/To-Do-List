//
//  ToDoList.swift
//  To-Do List hackwich
//
//  Created by Phillip Mantatsky on 1/25/24.
//

import Foundation
class ToDoList: ObservableObject {
    
    @Published var items = [ToDoItem(priority: "High", description: "Take out trash", dueDate: Date()),
                            
                            ToDoItem(priority: "Medium", description: "Pick up clothes", dueDate: Date()),
                            
                            ToDoItem(priority: "Low", description: "Eat a donut", dueDate: Date())]
    
}
