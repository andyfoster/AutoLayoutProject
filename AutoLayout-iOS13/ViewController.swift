//
//  ViewController.swift
//  AutoLayout-iOS13
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

func generateRandomNumber() -> Int {
    return Int.random(in: 0...5)
}

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var rollTotal: UILabel!
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        let randomOne = generateRandomNumber()
        let randomTwo = generateRandomNumber()
        
        let allDice = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
        diceImageView1.image = allDice[randomOne]
        diceImageView2.image = allDice[randomTwo]
        
        rollTotal.text = String(randomOne + 1 + randomTwo + 1)
    }
}
