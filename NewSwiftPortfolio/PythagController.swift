//
//  ViewController.swift
//  NewSwiftPortfolio
//
//  Created by ashi on 3/12/20.
//  Copyright © 2020 Ashika Palacharla. All rights reserved.
//

import UIKit
class PythagController: UIViewController {
    
    // IBOutlet connects to Storyboard items, I had problems with Drag
    @IBOutlet weak var side1: UITextField!
    @IBOutlet weak var side2: UITextField!
    @IBOutlet weak var side3: UILabel!
    
    // Loads at initialization
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initialize Outlets
        side1.text = "0.0"
        side2.text = "0.0"
        side3.text = "0.0"
    }

    // IBAction created with Drag from Storyboard
   @IBAction func calculate(sender: UIButton) {
        // let is for values that are not modified
        let s1 = Float(side1.text!) // Input value, !(Bang) avoids errors
        let s2 = Float(side2.text!)

        // Pythagorean Calculation
        let s3 = sqrt( (s1! * s1!) + (s2! * s2!) )

        // Set calculation to screen
        side3.text = String(s3)
        print("Pyth  \(side3.text!)")
    
    }
}
