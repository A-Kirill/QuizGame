//
//  Record.swift
//  QuizGame
//
//  Created by Кирилл Анисимов on 17.02.2020.
//  Copyright © 2020 Кирилл Анисимов. All rights reserved.
//

import Foundation

struct Record: Codable {
    let date: Date
    let score: Int
    let percent: Int
}
