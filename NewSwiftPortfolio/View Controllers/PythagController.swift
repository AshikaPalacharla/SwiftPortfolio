//
//  ViewController.swift
//  NewSwiftPortfolio
//
//  Created by ashi on 3/12/20.
//  Copyright © 2020 Ashika Palacharla. All rights reserved.
//

import UIKit
class PythagController: UIViewController {
    
    // IBOutlet connects to Storyboard items
    @IBOutlet weak var side1: UITextField!
    @IBOutlet weak var side2: UITextField!
    @IBOutlet weak var side3: UILabel!
    
    // Loads at initialization
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initialize Outlets
    }

    // IBAction created with Drag from Storyboard
   @IBAction func calculate(sender: UIButton) {
     var triangle = (A:Double(side1.text!), B:Double(side2.text!), C:Double(0.0))
    
     triangle.C = sqrt( (triangle.A! * triangle.A!) + (triangle.B! * triangle.B!) )
    
     // Set calculation to screen
    
     side3.text = String(triangle.C)
    
     print("Pyth \(side3.text!)")
    
    }
}
