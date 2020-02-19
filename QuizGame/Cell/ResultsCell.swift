//
//  ResultsCell.swift
//  QuizGame
//
//  Created by Кирилл Анисимов on 19.02.2020.
//  Copyright © 2020 Кирилл Анисимов. All rights reserved.
//

import UIKit

class ResultsCell: UITableViewCell {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var percentLabel: UILabel!
    
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        scoreLabel.text = nil
        dateLabel.text = nil
        percentLabel.text = nil
    }
}
