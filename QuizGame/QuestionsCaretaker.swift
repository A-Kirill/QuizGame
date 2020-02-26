//
//  QuestionsCaretaker.swift
//  QuizGame
//
//  Created by Кирилл Анисимов on 26.02.2020.
//  Copyright © 2020 Кирилл Анисимов. All rights reserved.
//

import UIKit

class QuestionsCaretaker {
    
    private let decoder = JSONDecoder()
    private let encoder = JSONEncoder()
    private let key = "qustionsKey"
    
    typealias Memento = Data
    
    func saveQuestion(questions: [Question]) {
        do {
            let data: Memento = try self.encoder.encode(questions)
            UserDefaults.standard.set(data, forKey: key)
        } catch let catchError {
            print("Failed save to UserDefaults: ", catchError)
        }
    }
    
    func retrieveQuestions() -> [Question] {
        guard let data = UserDefaults.standard.value(forKey: key) as? Memento else { return [] }
        do {
            return try decoder.decode([Question].self, from: data)
        } catch let catchError {
            print("Failed fetch from UserDefaults: ", catchError )
            return []
        }
    }
    
    func deleteQuestions() -> [Question] {
        return []
    }
}
