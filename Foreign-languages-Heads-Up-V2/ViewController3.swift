//
//  ViewController3.swift
//  Foreign-languages-Heads-Up-V2
//
//  Created by user180891 on 3/31/21.
//  Copyright © 2021 user180891. All rights reserved.
//

import UIKit
import Foundation
class ViewController3: UIViewController {

    @IBOutlet weak var NumberPassedLabel: UILabel!
    @IBOutlet weak var PassedLabel: UILabel!
    @IBOutlet weak var CorrectLabel: UILabel!
    @IBOutlet weak var NumberCorrectLabel: UILabel!
    @IBOutlet weak var TimerLabel: UILabel!
    @IBOutlet weak var DisplayLabel: UILabel!
    
    let cardset1 = ["soundtrack": "une bande originale",
                    "network" : "une chaine",
                    "music video" : "un clip video ; un videoclip",
                    "entertainment" : "un divertissment",
                    "documentary" : "un documentaire",
                            "screen" : "pecran",
                            "special effects" : "les effets speciaux (m)",
                            "interview" : "un entretien/une unterview",
                            "soap opera ; series" : "un feuilleton",
                            "premiere" : "une premoere",
                            "subtitles" : "les sous-titres (m)",
                            "to entertain" : "divertir",
                            "to broadcast" : "retransmettre",
                            "to release a movie" : "sortir un film"]
    var CorrectArray: [String] = []
    
    
    
    var counter = 100
    
    
    var timer: Timer!

    
         // Repeat "func Update() " every second and update the label
    
    
    
    @objc func updateCounter() {
        
        if counter > 0 {
            counter -= 1
            TimerLabel.text = "\(counter)"
        }else{
            TimerLabel.text = "0"
            let storyBoard : UIStoryboard = UIStoryboard(name: "ViewController3", bundle:nil)

            let ViewController4 = storyBoard.instantiateViewController(withIdentifier: "ViewController4") as! ViewController4

            self.present(ViewController4, animated:true, completion:nil)        }
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: false)
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false, block: { timer in
            while self.counter > 0 {
                self.updateCounter()
    }
})
        
        DisplayLabel.text = cardset1["soundtrack"]
        
}

    
    
    
    @IBAction func SwipeRight(_ sender: Any) {
        var PassedNumber = Int(NumberPassedLabel.text!)!
               PassedNumber += 1
               var Pnumber = String(PassedNumber)
               NumberPassedLabel.text = Pnumber
            
        
                let CurrentCardNumber = Int.random(in: 1...13)
                if CurrentCardNumber == 1 {
                    DisplayLabel.text = cardset1["soundtrack"]
                }
                if CurrentCardNumber == 2 {
                    DisplayLabel.text = cardset1["network"]
                }
                if CurrentCardNumber == 3 {
                    DisplayLabel.text = cardset1["music video"]
                }
                if CurrentCardNumber == 4 {
                   DisplayLabel.text = cardset1["documentary"]
                }
                if CurrentCardNumber == 5 {
                   DisplayLabel.text = cardset1["screen"]
                }
                if CurrentCardNumber == 6 {
                    DisplayLabel.text = cardset1["special effects"]
                }
                if CurrentCardNumber == 7 {
                    DisplayLabel.text = cardset1["interview"]
                }
                if CurrentCardNumber == 8 {
                    DisplayLabel.text = cardset1["soap opera"]
                }
                if CurrentCardNumber == 9 {
                    DisplayLabel.text = cardset1["premiere"]
                }
                if CurrentCardNumber == 10 {
                    DisplayLabel.text = cardset1["subtitles"]
                }
                if CurrentCardNumber == 11 {
                    DisplayLabel.text = cardset1["to entertain"]
                }
                if CurrentCardNumber == 12 {
                    DisplayLabel.text = cardset1["to broadcast"]
                }
                if CurrentCardNumber == 13 {
                    DisplayLabel.text = cardset1["to release a movie"]
                }
    }
    @IBAction func SwipeLeft(_ sender: Any) {
        var CorrectNumber = Int(NumberCorrectLabel.text!)!
        CorrectNumber += 1
        var cnumber = String(CorrectNumber)
        NumberCorrectLabel.text = cnumber
        
        CorrectArray.append(contentsOf: [(DisplayLabel.text ?? "ERORR")])
        print(CorrectArray)
        
        let CurrentCardNumber = Int.random(in: 1...13)
        if CurrentCardNumber == 1 {
            DisplayLabel.text = cardset1["soundtrack"]
        }
        if CurrentCardNumber == 2 {
            DisplayLabel.text = cardset1["network"]
        }
        if CurrentCardNumber == 3 {
            DisplayLabel.text = cardset1["music video"]
        }
        if CurrentCardNumber == 4 {
           DisplayLabel.text = cardset1["documentary"]
        }
        if CurrentCardNumber == 5 {
           DisplayLabel.text = cardset1["screen"]
        }
        if CurrentCardNumber == 6 {
            DisplayLabel.text = cardset1["special effects"]
        }
        if CurrentCardNumber == 7 {
            DisplayLabel.text = cardset1["interview"]
        }
        if CurrentCardNumber == 8 {
            DisplayLabel.text = cardset1["soap opera"]
        }
        if CurrentCardNumber == 9 {
            DisplayLabel.text = cardset1["premiere"]
        }
        if CurrentCardNumber == 10 {
            DisplayLabel.text = cardset1["subtitles"]
        }
        if CurrentCardNumber == 11 {
            DisplayLabel.text = cardset1["to entertain"]
        }
        if CurrentCardNumber == 12 {
            DisplayLabel.text = cardset1["to broadcast"]
        }
        if CurrentCardNumber == 13 {
            DisplayLabel.text = cardset1["to release a movie"]
        }
       
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? ViewController5 else
        {
            return
        }
        
        destination.otherLanguageCorrectArray = CorrectArray
    }

    
    
    
}
