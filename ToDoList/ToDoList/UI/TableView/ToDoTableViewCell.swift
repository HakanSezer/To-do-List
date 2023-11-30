//
//  ToDoTableViewCell.swift
//  ToDoList
//
//  Created by Hakan Sezer on 29.11.2023.
//

import UIKit

class ToDoTableViewCell: UITableViewCell {
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var labelOneTodo: UILabel!
    @IBOutlet weak var labelTwoLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        cornerRadiusView()
    }
    
    private func cornerRadiusView() {
        colorView.layer.cornerRadius = 4.0
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
