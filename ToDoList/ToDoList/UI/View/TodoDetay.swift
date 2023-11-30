//
//  TodoDetay.swift
//  ToDoList
//
//  Created by Hakan Sezer on 30.11.2023.
//

import UIKit

class TodoDetay: UIViewController {
    @IBOutlet weak var todoTextField: UITextField!
    @IBOutlet weak var todoTextView: UITextView!
    
    var todo: toDos?
    var viewModel = todoDetayViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        todoViewDidLoadAdd()
        
        textViewPlaceholder()
    }
    
    //MARK: - Functions
    
    private func textViewPlaceholder() {
        
        if todoTextView.text == "" {
            todoTextView.text = "Fill In"
            todoTextView.textColor = UIColor.lightGray
            todoTextView.font = UIFont(name: "verdana", size: 15.0)
            todoTextView.returnKeyType = .done
        }
        
        todoTextView.delegate = self
    }
    //ViewDidLoad
    private func todoViewDidLoadAdd() {
        if let k = todo {
            todoTextView.text = k.commant
            todoTextField.text = k.name
        }
    }

    @IBAction func saveButton(_ sender: Any) {
        if let ka = todoTextView.text, let kt = todoTextField.text {
            viewModel.guncelleme(todoName: kt, todoCommant: ka)
        }
    }
}
