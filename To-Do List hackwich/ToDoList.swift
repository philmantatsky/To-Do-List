//
//  ToDoList.swift
//  To-Do List hackwich
//
//  Created by Phillip Mantatsky on 1/25/24.
//

import Foundation
class ToDoList: ObservableObject {
    
    @Published var items : [ToDoItem] {
        didSet {
            let encoder = JSONEncoder()
            if let encoded = try? encoder.encode(items) {
                UserDefaults.standard.set(encoded, forKey: "data")
            }
        }
    }
    init() {
        if let items = UserDefaults.standard.data(forKey: "data") {
            let decoder = JSONDecoder()
            if let decoded = try? decoder.decode([ToDoItem].self, from: items) {
                self.items = decoded
                return
            }
        }
        items = []
    }
}
