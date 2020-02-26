//
//  GameSession.swift
//  QuizGame
//
//  Created by Кирилл Анисимов on 17.02.2020.
//  Copyright © 2020 Кирилл Анисимов. All rights reserved.
//

import Foundation

protocol GameViewDelegate {
    func didEndGame(result: Int, percent: Int)
}

class GameSession {
    
    static var scoreResult = Observable<Int>(0)
    var questionsCount: Int = Question.setupQuestion().count
    static var percent = Observable<Int>(0)
    var questions = Question.setupQuestion()
    
}
