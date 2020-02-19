//
//  Question.swift
//  QuizGame
//
//  Created by Кирилл Анисимов on 16.02.2020.
//  Copyright © 2020 Кирилл Анисимов. All rights reserved.
//

import Foundation

struct Question: Codable {
    
    var question: String
    let answerA: String
    let answerB: String
    let answerC: String
    let answerD: String
    
    var correctAnswer: Int
    
    static func setupQuestion() -> [Question] {
        let questions: [Question] = [
            
            Question(question: "What sort of animal is Walt Disney's Dumbo?",
                     answerA: "Deer",
                     answerB: "Rabbit",
                     answerC: "Elephant",
                     answerD: "Donkey",
                     correctAnswer: 3),
            
            Question(question: "What was the name of the Spanish waiter in the TV sitcom 'Fawlty Towers'?",
                     answerA: "Manuel",
                     answerB: "Pedro",
                     answerC: "Alfonso",
                     answerD: "Javier",
                     correctAnswer: 1),
            
            Question(question: "Which battles took place between the Royal Houses of York and Lancaster?",
                     answerA: "Thirty Years War",
                     answerB: "Hundred Years War",
                     answerC: "War of the Roses",
                     answerD: "English Civil War",
                     correctAnswer: 3),
            
            Question(question: "Who composed 'Rhapsody in Blue'?",
                     answerA: "Irving Berlin",
                     answerB: "George Gershwin",
                     answerC: "Aaron Copland",
                     answerD: "Cole Porter",
                     correctAnswer: 2),
            
            Question(question: "Which former Beatle narrated the TV adventures of Thomas the Tank Engine?",
                     answerA: "John Lennon",
                     answerB: "Paul McCartney",
                     answerC: "George Harrison",
                     answerD: "Ringo Starr",
                     correctAnswer: 4),
            
            Question(question: "Where would a 'peruke' be worn?",
                     answerA: "Around the neck",
                     answerB: "On the head",
                     answerC: "Around the waist",
                     answerD: "On the wrist",
                     correctAnswer: 2),
            
            Question(question: "What is the Celsius equivalent of 77 degrees Fahrenheit?",
                     answerA: "15",
                     answerB: "20",
                     answerC: "25",
                     answerD: "30",
                     correctAnswer: 3),
            
            Question(question: "Suffolk Punch and Hackney are types of what?",
                     answerA: "Carriage",
                     answerB: "Wrestling style",
                     answerC: "Cocktail",
                     answerD: "Horse",
                     correctAnswer: 4),
            
            Question(question: "Which is the largest city in the USA's largest state?",
                     answerA: "Dallas",
                     answerB: "Los Angeles",
                     answerC: "New York",
                     answerD: "Anchorage",
                     correctAnswer: 4),
            
            Question(question: "Which Shakespeare play features the line 'Neither a borrower, nor a lender be'?",
                     answerA: "Hamlet",
                     answerB: "Macbeth",
                     answerC: "Othello",
                     answerD: "The Merchant of Venice",
                     correctAnswer: 1),
            
        ]
        return questions
    }
}
