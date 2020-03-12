//
//  SquareLabController.swift
//  NewSwiftPortfolio
//
//  Created by ashi on 3/12/20.
//  Copyright © 2020 Ashika Palacharla. All rights reserved.
//

import UIKit

class SquareLabController: UIViewController {
    
    // IBOutlet connects to Storyboard items
    @IBOutlet weak var width: UITextField!
    @IBOutlet weak var length: UITextField!
    @IBOutlet weak var area: UILabel!
    @IBOutlet weak var perimeter: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    
        //Initialize Outlets
        width.text = "0.0"
        length.text = "0.0"
        area.text = "0.0"
        perimeter.text = "0.0"
    }
   @IBAction func calculatearea(sender: UIButton) {
        // let is for values that are not modified
        let w = Float(width.text!) // Input value, !(Bang) avoids errors
        let l = Float(length.text!)

        // Pythagorean Calculation
        let a = (w! * l!)

        // Set calculation to screen
        area.text = String(a)
        print("Area  \(area.text!)")
    
    }
    
    @IBAction func calculateperimeter(sender: UIButton) {
        // let is for values that are not modified
        let w = Float(width.text!) // Input value, !(Bang) avoids errors
        let l = Float(length.text!)

        // Pythagorean Calculation
        let p = (w! * 2) + (l! * 2)

        // Set calculation to screen
        perimeter.text = String(p)
        print("Perimeter  \(perimeter.text!)")
    
    }
}
