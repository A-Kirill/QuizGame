//
//  GameViewController.swift
//  QuizGame
//
//  Created by Кирилл Анисимов on 16.02.2020.
//  Copyright © 2020 Кирилл Анисимов. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    var questions = Question.setupQuestion()
    var questNumber = Int()
    var answerNumber = Int()
    var score = Int()
    var gameViewDelegate: GameViewDelegate?
    var strategy = Game.shared.difficulty
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var buttonLabel: [UIButton]!

    @IBAction func backButton(_ sender: UIButton) {
    }
    @IBAction func button1(_ sender: UIButton) {
        if answerNumber == 1 {
            score += 1
            pickQuestion()
        } else {
            showResult()
        }
    }
    @IBAction func button2(_ sender: UIButton) {
        if answerNumber == 2 {
            score += 1
            pickQuestion()
        } else {
            showResult()
        }
    }
    @IBAction func button3(_ sender: UIButton) {
        if answerNumber == 3 {
            score += 1
            pickQuestion()
        } else {
            showResult()
        }
    }
    @IBAction func button4(_ sender: UIButton) {
        if answerNumber == 4 {
            score += 1
            pickQuestion()
        } else {
            showResult()
        }
    }
  
    
    
    override func viewWillAppear(_ animated: Bool) {
        questionLabel.layer.cornerRadius = 25
        questionLabel.layer.masksToBounds = true
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chooseQuestionStrategy()
        pickQuestion()
    }
    
    
    func chooseQuestionStrategy() {
        var chosenStrategy: CreateQuestionsStrategy {
            switch self.strategy {
            case .sequential:
                return SequentialQuestions()
            case .shuffled:
                return ShuffledQuestions()
            }
        }
        questions = chosenStrategy.questionsSequence()
    }
    
    
    func pickQuestion() {
        if questions.count > 0 {
            questNumber = 0
            answerNumber = questions[questNumber].correctAnswer
                
            questionLabel.text = questions[questNumber].question
            buttonLabel[0].setTitle(questions[questNumber].answerA, for: UIControl.State.normal)
            buttonLabel[1].setTitle(questions[questNumber].answerB, for: UIControl.State.normal)
            buttonLabel[2].setTitle(questions[questNumber].answerC, for: UIControl.State.normal)
            buttonLabel[3].setTitle(questions[questNumber].answerD, for: UIControl.State.normal)
            
            questions.remove(at: 0)
        } else {
            showResult()
        }
    }
    
    func showResult() {
        let alertController = UIAlertController(title: "Final result!", message: "You answered on \(score) questions", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "ОК", style: .cancel, handler: { (_) in
            self.navigationController?.popViewController(animated: true)
            self.dismiss(animated: true, completion: nil)
        }))

  //      let percent = Int(round(Double(score * 100 / questions.count)))
        let percent = score * 10
        self.gameViewDelegate?.didEndGame(result: score, percent: percent)

        let record = Record(date: Date(), score: score, percent: percent)
        Game.shared.addRecord(record)
    
        //Game.shared.clearRecords()
        
        present(alertController, animated: true)
    }
    
    
}
