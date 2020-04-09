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
    
    // array with dice image names
    let imageNames = ["DiceOne",
                      "DiceTwo",
                      "DiceThree",
                      "DiceFour",
                      "DiceFive",
                      "DiceSix"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // give the rollButton rounded corners
        rollButton.layer.cornerRadius = 5
        
    }
    
    // triggered when rollButton is pressed
    @IBAction func rollButtonTouchUp(_ sender: UIButton) {
        // change dice images to new random image
        dice1ImageView.image = UIImage(named: imageNames.randomElement()!)
        dice2ImageView.image = UIImage(named: imageNames.randomElement()!)
    }
}

