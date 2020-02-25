//
//  ShuffledQuestions.swift
//  QuizGame
//
//  Created by Кирилл Анисимов on 25.02.2020.
//  Copyright © 2020 Кирилл Анисимов. All rights reserved.
//

import UIKit

class ShuffledQuestions: CreateQuestionsStrategy {
    
    func questionsSequence() -> [Question] {
        let questions = Question.setupQuestion()
        let shuffledQuestions = questions.shuffled()
        return shuffledQuestions
    }
    
}
