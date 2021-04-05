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
    @IBOutlet weak var DisplayLabel: UILabel!
    
    var FrenchCardSet = ["une Bande Origianle", "Une Chaine", "Un Vidéoclip", "Un Divertissement", "Un Documentaire", "l'écran", "Les Effets Spéciaux", "Une Interview", "Un Feuilleton", "Une Premiére", "Les Sous-Titres", "Divertir", "Enregistrer", "Retransmettre", "Sortir Un Film"]
    var CorrectArray: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
        Timer.scheduledTimer(withTimeInterval: 60, repeats: false) { (Timer) in
            var timerleft = 60
            

                timerleft -= 1
            self.TimerLabel.text = "\(timerleft)"
                
                if timerleft <= 0 {
                    Timer.invalidate ()
                    
                }
        }
    }
    
    @IBAction func SwipeRight(_ sender: Any) {
        var PassedNumber = Int(NumberPassedLabel.text!)!
               PassedNumber += 1
               var Pnumber = String(PassedNumber)
               NumberPassedLabel.text = Pnumber
        
        CorrectArray.append(contentsOf: [DisplayLabel.text!])
        print(CorrectArray)
    }
    
   
    @IBAction func SwipeLeft(_ sender: Any) {
        var CorrectNumber = Int(NumberCorrectLabel.text!)!
        CorrectNumber += 1
        var cnumber = String(CorrectNumber)
        NumberCorrectLabel.text = cnumber
    }
    
    
    
    
}
