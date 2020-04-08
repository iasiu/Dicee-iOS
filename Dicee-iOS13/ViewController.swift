//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // refrence to the button which rolls the dice
    @IBOutlet weak var rollButton: UIButton!
    // refrence to image displaying dice on the left
    @IBOutlet weak var firstDiceImageView: UIImageView!
    // refrence to image displaying dice on the right
    @IBOutlet weak var secondDiceImageView: UIImageView!
    
    // represents values shown on dice
    var value1 = 1
    var value2 = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // give the rollButton rounded corners
        rollButton.layer.cornerRadius = 5
        
        // set the images of firstDice and secondDice to DiceOne
        firstDiceImageView.image = UIImage(named: "DiceOne")
        secondDiceImageView.image = UIImage(named: "DiceOne")
    }
    // triggered when rollButton is pressed
    @IBAction func rollButtonTouchUp(_ sender: UIButton) {
        // dict with names of images corresponding to values
        let imgNames = [1: "DiceOne",
                        2: "DiceTwo",
                        3: "DiceThree",
                        4: "DiceFour",
                        5: "DiceFive",
                        6: "DiceSix"]
        
        // set dice values to random between 1 and 6
        value1 = Int.random(in: 1 ... 6)
        value2 = Int.random(in: 1 ... 6)
        
        // change images of dice according to value
        changeImage(imgView: firstDiceImageView, imgName: imgNames[value1]!)
        changeImage(imgView: secondDiceImageView, imgName: imgNames[value2]!)
    }
    
    //func changes given imageView to image of name imgName
    func changeImage(imgView: UIImageView, imgName: String) -> Void{
        imgView.image = UIImage(named: imgName)
    }

}

