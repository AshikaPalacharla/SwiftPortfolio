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
        
    }
   @IBAction func calculatearea(sender: UIButton) {
        // let is for values that are not modified
    var square = (W:Double(width.text!), L:Double(length.text!), A:Double(0.0), P:Double(0.0))
        let w = Float(width.text!) // Input value, !(Bang) avoids errors
        let l = Float(length.text!)

        // Pythagorean Calculation
    square.A = (square.W! * square.L!)
    
    area.text = String(square.A)
    print("Area  \(area.text!)")
    
    }
    
    
    @IBAction func calculateperimeter(sender: UIButton) {
        // let is for values that are not modified
        
        
        var square = (W:Double(width.text!), L:Double(length.text!), A:Double(0.0), P:Double(0.0))
            let w = Float(width.text!) // Input value, !(Bang) avoids errors
            let l = Float(length.text!)

            // Pythagorean Calculation
        square.P = (square.W!*2) + (2 * square.L!)
        
        perimeter.text = String(square.P)
        print("Perimeter  \(perimeter.text!)")
    
    }
}
