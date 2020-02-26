//
//  MainViewController.swift
//  QuizGame
//
//  Created by Кирилл Анисимов on 16.02.2020.
//  Copyright © 2020 Кирилл Анисимов. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var startGameLabel: UIButton!
    @IBOutlet weak var resultGameButton: UIButton!
    @IBAction func unwindToMain(_ unwindSegue: UIStoryboardSegue){}
    @IBAction func unwindFromResult(_ unwindSegue: UIStoryboardSegue){}
    
    @IBAction func startGameButton(_ sender: UIButton) {
        GameSession.scoreResult.value = 0
        GameSession.percent.value = 0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

