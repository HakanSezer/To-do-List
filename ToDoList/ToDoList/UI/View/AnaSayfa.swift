//
//  ViewController.swift
//  ToDoList
//
//  Created by Hakan Sezer on 29.11.2023.
//

import UIKit

class AnaSayfa: UIViewController {
    @IBOutlet weak var todoTableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var todoListeleri = [toDos]()
    var viewModel = AnaSayfaViewModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // TableView
        tableViewFunc()
        // RxSwift
        rxSwiftFunc()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        viewModel.todoYukle()
    }
    
    //MARK: - Prepare
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetay" {
            if let todo = sender as? toDos {
                var gidilecekVC = segue.destination as! TodoDetay
                gidilecekVC.todo = todo
            }
        }
    }

    //MARK: - Functions
    
    // RxSwift Private
    private func rxSwiftFunc() {
        _ = viewModel.todoListeler.subscribe(onNext: { liste in
            self.todoListeleri = liste
            self.todoTableView.reloadData()
        })
    }
    // TableView üzerinde delegate ve DataSource dosyaları
    private func tableViewFunc() {
        todoTableView.delegate = self
        todoTableView.dataSource = self
    }

}

