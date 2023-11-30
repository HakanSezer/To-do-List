//
//  todoDetayViewModel.swift
//  ToDoList
//
//  Created by Hakan Sezer on 30.11.2023.
//

import Foundation

class todoDetayViewModel {
    
    var krepo = todoListDaoRepository()
    
    func guncelleme(todoName: String, todoCommant: String) {
        krepo.guncelle(todoName: todoName, todoCommant: todoCommant)
    }
}
