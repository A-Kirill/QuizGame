//
//  Game.swift
//  QuizGame
//
//  Created by Кирилл Анисимов on 17.02.2020.
//  Copyright © 2020 Кирилл Анисимов. All rights reserved.
//

import Foundation

class Game {
    
    static let shared = Game()
    
    var gameSession: GameSession?
    var difficulty: Strategy = .sequential
    
    private let recordsCaretaker = RecordsCaretaker()
    private let questionsCaretaker = QuestionsCaretaker()//for questions
    
    private(set) var records: [Record] {
        didSet {
            recordsCaretaker.saveRecord(records: self.records)
        }
    }
    
    private init() {
        self.records = self.recordsCaretaker.retrieveRecords()
        self.questions = self.questionsCaretaker.retrieveQuestions()//for questions
    }
    
    func addRecord(_ record: Record) {
        self.records.append(record)
    }
    
    func gameDidEnd(record: Record) {
        let record = Record(date: record.date, score: record.score, percent: record.percent)
        records.append(record)
        gameSession = nil
    }
    
    func clearRecords() {
        self.records = []
    }
    

    //for questions:
    var questions: [Question] {
        didSet {
            questionsCaretaker.saveQuestion(questions: self.questions)
        }
    }
    
    func addQuestion(_ question: Question) {
        self.questions.append(question)
    }
    
    func addStartQuestions(_ qustions: [Question]) {
        self.questions = Question.setupQuestion()
    }
    
}


enum Strategy {
    case sequential, shuffled
}
