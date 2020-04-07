//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // refrence to the button which rolls the dices
    @IBOutlet weak var rollButton: UIButton!
    // image displaying dice on the left
    @IBOutlet weak var firstDiceImageView: UIImageView!
    // image displaying dice on the right
    @IBOutlet weak var secondDiceImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // give the rollButton rounded corners
        rollButton.layer.cornerRadius = 5
        
        // set the image of firstDice to DiceSix
        firstDiceImageView.image = #imageLiteral(resourceName: "DiceSix")
    }


}

