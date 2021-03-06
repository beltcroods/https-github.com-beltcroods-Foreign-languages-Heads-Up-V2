//
//  ViewController5.swift
//  Foreign-languages-Heads-Up-V2
//
//  Created by user180891 on 3/31/21.
//  Copyright © 2021 user180891. All rights reserved.
//

import UIKit

class ViewController5: UIViewController, UITableViewDelegate, UITableViewDataSource {
        
    
    @IBOutlet weak var OtherTableView: UITableView!
    @IBOutlet weak var EnglishTableView: UITableView!
    var otherLanguageCorrectArray = [""]

    override func viewDidLoad() {
        super.viewDidLoad()
       
        OtherTableView.dataSource = self
    
    }
    
    let englishCorrectArray = [String]()
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return otherLanguageCorrectArray.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = OtherTableView.dequeueReusableCell(withIdentifier: "CellOther1") ?? UITableViewCell(style: .subtitle, reuseIdentifier: "allCell")
            
            let otherWords = otherLanguageCorrectArray[indexPath.row]
            cell.textLabel?.text = otherWords
            
            return cell
        }

    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return otherLanguageCorrectArray.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = OtherTableView.dequeueReusableCell(withIdentifier: "CellOther1")
//
//        let otherWords = otherLanguageCorrectArray[indexPath.row]
//        cell?.textLabel?.text = otherWords
//
//        return cell!
//    }
    
//    func tableView2(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return englishCorrectArray.count
//    }
//
//    func tableView2(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "CellEnglish1", for: indexPath)
//
//        cell.textLabel?.text = otherLanguageCorrectArray[indexPath.item]
//
//        return cell
//}
    }
    
    
    

