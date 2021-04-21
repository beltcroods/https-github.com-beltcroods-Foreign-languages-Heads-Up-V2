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
    
    var FrenchCardSet = ["une Bande Origianle", "Une Chaine", "Un Vidéoclip", "Un Divertissement", "Un Documentaire", "l'écran", "Les Effets Spéciaux", "Une Interview", "Un Feuilleton", "Une Premiére", "Les Sous-Titres", "Divertir", "Enregistrer", "Retransmettre", "Sortir Un Film"]
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
        
        CorrectArray.append(contentsOf: [DisplayLabel.text!])
        print(CorrectArray)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? ViewController5 else
        {
            return
        }
        
        destination.otherLanguageCorrectArray = CorrectArray
    }

    
    
    
}
