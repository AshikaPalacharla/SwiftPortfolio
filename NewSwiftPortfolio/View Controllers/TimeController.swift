//
//  TimeController.swift
//  NewSwiftPortfolio
//
//  Created by ashi on 3/12/20.
//  Copyright © 2020 Ashika Palacharla. All rights reserved.
//

import UIKit

class TimeController: UIViewController {

    @IBOutlet weak var total: UITextField!
    @IBOutlet weak var days: UILabel!
    @IBOutlet weak var hours: UILabel!
    @IBOutlet weak var mins: UILabel!
    @IBOutlet weak var secs: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        total.text = "0.0"
        days.text = "0.0"
        hours.text = "0.0"
        mins.text = "0.0"
        secs.text = "0.0"
    }
    
    @IBAction func calculatetime(sender: UIButton) {
        // let is for values that are not modified
        let t = Float(total.text!)
        let d = Float(days.text!)
        let h = Float(hours.text!)
        let m = Float(mins.text!)
        let s = Float(secs.text!)
/*
        d = t/(60*60*24);
        rem = t % (60*60*24);
           
        h = rem/(60*60);
        rem = t % (60*60);
           
        m = rem / 60;
        rem = rem % 60;
           
        s = rem;
    }
 */
    }
}
