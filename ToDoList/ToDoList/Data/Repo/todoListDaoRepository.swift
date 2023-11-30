//
//  todoListDaoRepository.swift
//  ToDoList
//
//  Created by Hakan Sezer on 30.11.2023.
//

import Foundation
import RxSwift

class todoListDaoRepository {
    var todoListeler = BehaviorSubject<[toDos]>(value: [toDos]())
    
    
    // NEW ADD ToDo
    func kaydet(toDoBaşlık: String, toDoDictonary: String) {
        print("Kayıt edilen todo \(toDoBaşlık) - \(toDoDictonary)")
    }
    
    func guncelle(todoName: String, todoCommant: String) {
       print("Todo Guncellendi: \(todoName) - \(todoCommant)")
    }
    
    func deleteTodo(todoID: Int) {
        print("Seçildi \(todoID)")
        // Reflesh
        todoYukle()
        
    }
    
    func seachTodo(aramakelimesi: String) {
        print("Todo Ara : \(aramakelimesi)")
    }
    
    func todoYukle() {
        var todoListe = [toDos]()
        
        let k1 = toDos(id: 1, name: "Test One", commant: "Kitapları al")
        let k2 = toDos(id: 2, name: "Test Two", commant: "Ayakkabıları Al")
        todoListe.append(k1)
        todoListe.append(k2)
        todoListeler.onNext(todoListe) // Tetikleme.
    }
    
}
