//
//  ResultViewController.swift
//  QuizGame
//
//  Created by Кирилл Анисимов on 17.02.2020.
//  Copyright © 2020 Кирилл Анисимов. All rights reserved.
//

import UIKit

class ResultViewController: UITableViewController {
    
    let dateFormatter: DateFormatter = {
        let df = DateFormatter()
        df.dateFormat = "dd-MM-yyyy HH:mm"
        return df
    }()
    
    var records = Game.shared.records

    override func viewDidLoad() {
        super.viewDidLoad()
        //register cell
        tableView.register(UINib(nibName: "ResultCell", bundle: nil), forCellReuseIdentifier: "resultIdentifier")
        print(records.count)
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return records.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "resultIdentifier", for: indexPath) as! ResultsCell

        
        cell.scoreLabel.text = "\(records[indexPath.row].score) correctly answered questions."
        cell.dateLabel.text = "Date: \(dateFormatter.string(from: records[indexPath.row].date))"
        cell.percentLabel.text = "\(records[indexPath.row].percent) %"

        return cell
    }
}
