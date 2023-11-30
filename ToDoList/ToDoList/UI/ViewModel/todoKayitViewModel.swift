//
//  todoKayitViewModel.swift
//  ToDoList
//
//  Created by Hakan Sezer on 30.11.2023.
//

import Foundation


class todoKayitViewModel {
    var krepo = todoListDaoRepository()
    
    func kaydet(todoName: String, todoCommant: String) {
        krepo.kaydet(toDoBaşlık: todoName, toDoDictonary: todoCommant)
    }
}
