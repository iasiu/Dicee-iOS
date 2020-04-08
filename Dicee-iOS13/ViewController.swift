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
    @IBOutlet weak var dice1ImageView: UIImageView!
    // refrence to image displaying dice on the right
    @IBOutlet weak var dice2ImageView: UIImageView!
    
    // dict with values and corresponding dice image names
    var imageNames = [1: "DiceOne",
                      2: "DiceTwo",
                      3: "DiceThree",
                      4: "DiceFour",
                      5: "DiceFive",
                      6: "DiceSix"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // give the rollButton rounded corners
        rollButton.layer.cornerRadius = 5
        
        // set the images of dice1 and dice2 to DiceOne
        dice1ImageView.image = UIImage(named: "DiceOne")
        dice2ImageView.image = UIImage(named: "DiceOne")
    }
    
    // triggered when rollButton is pressed
    @IBAction func rollButtonTouchUp(_ sender: UIButton) {
        // change dice images to new random
        dice1ImageView.image = UIImage(named: imageNames[Int.random(in: 1 ... 6)]!)
        dice2ImageView.image = UIImage(named: imageNames[Int.random(in: 1 ... 6)]!)
    }
}

