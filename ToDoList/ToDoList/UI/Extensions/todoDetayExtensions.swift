//
//  todoDetayExtensions.swift
//  ToDoList
//
//  Created by Hakan Sezer on 30.11.2023.
//

import Foundation
import UIKit

extension TodoDetay: UITextViewDelegate {
    //MARK: - TextView
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.text == "Fill In" {
            textView.text = ""
            textView.textColor = UIColor.black
            textView.font = UIFont(name: "verdana", size: 20.0)
        }
    }
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if text == "\n" {
            textView.resignFirstResponder()
        }
            return true
    }
    // Silindikten sonra tekrardan geri gelmesi için.
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text == "" {
            textView.text = "Fill In"
            textView.textColor = UIColor.lightGray
            textView.font = UIFont(name: "verdana", size: 13.0)
        }
    }
}
