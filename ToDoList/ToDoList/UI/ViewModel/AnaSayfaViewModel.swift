//
//  AnaSayfaViewModel.swift
//  ToDoList
//
//  Created by Hakan Sezer on 30.11.2023.
//

import Foundation
import RxSwift

class AnaSayfaViewModel {
    var krepo = todoListDaoRepository()
    var todoListeler = BehaviorSubject<[toDos]>(value: [toDos]())
    
    init() {
        todoListeler = krepo.todoListeler
        todoYukle()
    }
    
    func sil(todoID: Int) {
        krepo.deleteTodo(todoID: todoID)
    }
    func ara(aramaKelimesi: String) {
        krepo.seachTodo(aramakelimesi: aramaKelimesi)
    }
    
    func todoYukle() {
        krepo.todoYukle()
    }
}
