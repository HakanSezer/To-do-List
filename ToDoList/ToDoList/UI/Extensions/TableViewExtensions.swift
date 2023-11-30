//
//  TableViewExtensions.swift
//  ToDoList
//
//  Created by Hakan Sezer on 30.11.2023.
//

import Foundation
import UIKit

extension AnaSayfa: UITableViewDelegate, UITableViewDataSource {
    
    //MARK: - TableView
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoListeleri.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let todo = todoListeleri[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "todoHucresi") as! ToDoTableViewCell
        cell.labelOneTodo.text = todo.name
        cell.labelTwoLabel.text = todo.commant
        
        return cell
    }
    
    // TableView TouchUp Inside
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let todo = todoListeleri[indexPath.row]
        
        performSegue(withIdentifier: "toDetay", sender: todo)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        // Tamamlama Actions
        let tamamlanmaActions = UIContextualAction(style: .normal, title: "Tamamlandı.") { contextActions, view, bool in
            let todo = self.todoListeleri[indexPath.row]
            
            let alert = UIAlertController(title: "Tamamlandı.", message: "\(todo.name!) Tamamlandı mı?", preferredStyle: .alert)
            
            let iptalAction = UIAlertAction(title: "İptal", style: .cancel)
            alert.addAction(iptalAction)
            
            let evetAction = UIAlertAction(title: "Evet.", style: .destructive) { action in
                self.viewModel.sil(todoID: todo.id!)
            }
            alert.addAction(evetAction)
            self.present(alert,animated: true)
        }
        //Actions
        let bittiActions = UIContextualAction(style: .destructive, title: "Sil") { contextActions, view, bool in
            let todo = self.todoListeleri[indexPath.row]
            
            let alert = UIAlertController(title: "Sil İşlemi.", message: "\(todo.name!) Silinsin mı?", preferredStyle: .alert)
            
            let iptalAction = UIAlertAction(title: "İptal", style: .cancel)
            alert.addAction(iptalAction)
            
            let evetAction = UIAlertAction(title: "Evet.", style: .destructive) { action in
                self.viewModel.sil(todoID: todo.id!)
            }
            alert.addAction(evetAction)
            self.present(alert,animated: true)
        }
        return UISwipeActionsConfiguration(actions: [bittiActions, tamamlanmaActions])
    }
    
}
