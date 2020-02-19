//
//  MainViewController.swift
//  QuizGame
//
//  Created by Кирилл Анисимов on 16.02.2020.
//  Copyright © 2020 Кирилл Анисимов. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var startGameButton: UIButton!
    @IBOutlet weak var resultGameButton: UIButton!
    @IBAction func unwindToMain(_ unwindSegue: UIStoryboardSegue){}
    @IBAction func unwindFromResult(_ unwindSegue: UIStoryboardSegue){}
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

