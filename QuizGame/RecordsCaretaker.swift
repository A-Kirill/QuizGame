//
//  RecordsCaretaker.swift
//  QuizGame
//
//  Created by Кирилл Анисимов on 17.02.2020.
//  Copyright © 2020 Кирилл Анисимов. All rights reserved.
//

import Foundation

class RecordsCaretaker {
    
    private let encoder = JSONEncoder()
    private let decoder = JSONDecoder()
    private let key = "recordsKey"
    
    //using pattern Memento:
    typealias Memento = Data
    
    func saveRecord(records: [Record]) {
        do {
            //let data = try self.encoder.encode(records)
            let data: Memento = try self.encoder.encode(records)
            UserDefaults.standard.set(data, forKey: key)
        } catch let catchError {
            print("Failed save to UserDefaults: ", catchError)
        }
    }
    
    func retrieveRecords() -> [Record] {
        //guard let data = UserDefaults.standard.data(forKey: key) else { return [] }
        guard let data = UserDefaults.standard.value(forKey: key) as? Memento else { return [] }
        do {
            return try decoder.decode([Record].self, from: data)
        } catch let catchError {
            print("Failed fetch from UserDefaults: ", catchError )
            return []
        }
    }
    
    func deleteRecords() -> [Record] {
        return []
    }
}


