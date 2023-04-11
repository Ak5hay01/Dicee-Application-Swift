//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //diceImageView1?.image = UIImage(named: "DiceSix")
        //diceImageView1.alpha = 0.5
        
       // diceImageView2?.image = UIImage(named: "DiceTwo")
        
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
//        print("Button pressed.")
//        diceImageView1.image = UIImage(named: "DiceFour")
//        diceImageView2.image = UIImage(named: "DiceFour")
        
       let diceArray = [UIImage(named: "DiceOne"),
         UIImage(named: "DiceTwo"),
         UIImage(named: "DiceThree"),
         UIImage(named: "DiceFour"),
         UIImage(named: "DiceFive"),
         UIImage(named: "DiceSix")]
        
        diceImageView1.image = diceArray[Int.random(in: 0...5)]
        diceImageView2.image = diceArray[Int.random(in: 0...5)]
        
        
        // Challenge Solution
        let alphabets = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]

        var password = alphabets[Int.random(in: 0...25)] + alphabets[Int.random(in: 0...25)] +
                        alphabets[Int.random(in: 0...25)] + alphabets[Int.random(in: 0...25)] + alphabets[Int.random(in: 0...25)] + alphabets[Int.random(in: 0...25)]
        
        print("The generated Password is \n \(password)")
        
        
       
    }
    
}

