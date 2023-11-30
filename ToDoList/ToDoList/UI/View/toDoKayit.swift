//
//  toDoKayit.swift
//  ToDoList
//
//  Created by Hakan Sezer on 30.11.2023.
//

import UIKit

class toDoKayit: UIViewController {
    //MARK: - UI Elements
    
    @IBOutlet weak var kayitTextField: UITextField!
    @IBOutlet weak var icerikTextView: UITextView!
    
    // ilk olarak buraya aktarıyoruz.
    var viewModel = todoKayitViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textViewPlaceholder()
        
        
    }
    //MARK: - Functions
    private func textViewPlaceholder() {
        icerikTextView.text = "Fill In"
        icerikTextView.textColor = UIColor.lightGray
        icerikTextView.font = UIFont(name: "verdana", size: 15.0)
        icerikTextView.returnKeyType = .done
        
        
        icerikTextView.delegate = self
    }
    
    //MARK: - Actions
    @IBAction func saveButton(_ sender: Any) {
        if let todoName = kayitTextField.text, let todoCommant = icerikTextView.text {
            viewModel.kaydet(todoName: todoName, todoCommant: todoCommant)
        }
    }
}
