//
//  ViewController5.swift
//  Foreign-languages-Heads-Up-V2
//
//  Created by user180891 on 3/31/21.
//  Copyright © 2021 user180891. All rights reserved.
//

import UIKit

class ViewController5: UIViewController, UITableViewDelegate {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    var otherLanguageCorrectArray = [""]
    let englishCorrectArray = [String]()
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {        return otherLanguageCorrectArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellOtherCorrect", for: indexPath)
        
        cell.textLabel?.text = otherLanguageCorrectArray[indexPath.item]
        
        return cell
    }
    
    func tableView2(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return englishCorrectArray.count
    }
    
    func tableView2(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellEnglishCorrect", for: indexPath)
        
        cell.textLabel?.text = "Section \(indexPath.section) Row \(indexPath.row)"
        
        return cell
    
    
    
}
    
    @IBOutlet weak var OtherTableView: UITableView!
    
    @IBOutlet weak var EnglishTableView: UITableView!
    
}
