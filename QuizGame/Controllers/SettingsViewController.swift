//
//  SettingsViewController.swift
//  QuizGame
//
//  Created by Кирилл Анисимов on 25.02.2020.
//  Copyright © 2020 Кирилл Анисимов. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var sequenceControl: UISegmentedControl!
    
    private var questionsStrategy: Strategy {
        switch self.sequenceControl.selectedSegmentIndex {
        case 0:
            return .sequential
        case 1:
            return .shuffled
        default:
            return .sequential
        }
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        Game.shared.difficulty = questionsStrategy
        print(questionsStrategy)
    }

}
