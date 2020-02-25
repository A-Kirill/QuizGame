//
//  SequentialQuestions.swift
//  QuizGame
//
//  Created by Кирилл Анисимов on 25.02.2020.
//  Copyright © 2020 Кирилл Анисимов. All rights reserved.
//

import UIKit

class SequentialQuestions: CreateQuestionsStrategy {
    
    func questionsSequence() -> [Question] {
        let questions = Question.setupQuestion()
        return questions
    }
}
