//
//  QuestionsCell.swift
//  QuizGame
//
//  Created by Кирилл Анисимов on 26.02.2020.
//  Copyright © 2020 Кирилл Анисимов. All rights reserved.
//

import UIKit

class QuestionsCell: UITableViewCell {
    
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var questionNameLabel: UILabel!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        numberLabel.text = nil
        questionNameLabel.text = nil
    }
    
}
