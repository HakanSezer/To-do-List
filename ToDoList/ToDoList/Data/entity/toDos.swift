//
//  toDos.swift
//  ToDoList
//
//  Created by Hakan Sezer on 29.11.2023.
//

import Foundation

class toDos {
    var id: Int?
    var name: String?
    var commant: String?
    
    init() {
    }
    
    init(id: Int, name:String, commant: String) {
        self.id = id
        self.name = name
        self.commant = commant
    }
}
