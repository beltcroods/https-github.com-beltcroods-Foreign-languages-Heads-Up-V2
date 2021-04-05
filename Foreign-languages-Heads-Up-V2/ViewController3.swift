//
//  ViewController3.swift
//  Foreign-languages-Heads-Up-V2
//
//  Created by user180891 on 3/31/21.
//  Copyright © 2021 user180891. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {

    @IBOutlet weak var NumberPassedLabel: UILabel!
    @IBOutlet weak var PassedLabel: UILabel!
    @IBOutlet weak var CorrectLabel: UILabel!
    @IBOutlet weak var NumberCorrectLabel: UILabel!
    @IBOutlet weak var TimerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func SwipeRight(_ sender: Any) {
        var PassedNumber = Int(NumberPassedLabel.text!)!
               PassedNumber += 1
               var Pnumber = String(PassedNumber)
               NumberPassedLabel.text = Pnumber
    }
    
   
    @IBAction func SwipeLeft(_ sender: Any) {
        var CorrectNumber = Int(NumberCorrectLabel.text!)!
        CorrectNumber += 1
        var cnumber = String(CorrectNumber)
        NumberCorrectLabel.text = cnumber
    }
    
}
