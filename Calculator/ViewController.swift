//
//  ViewController.swift
//  Calculator
//
//  Created by Admin on 15.10.21.
//  Copyright © 2021 ID_crew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var a = ""
    var b:Double = 0
    var c:Double = 0
    var action = 0
    
    @IBOutlet weak var display: UILabel!


    @IBAction func one(_ sender: UIButton) {
    a=a+String(sender.tag)
    display.text = a
    }
    
    @IBAction func ac(_ sender: UIButton) {
        a = ""
        display.text = "0"
    }
    
    @IBAction func apostraf(_ sender: UIButton) {
        a=a+"."
        display.text = a
    }
    @IBAction func reverse(_ sender: Any) {
        a.insert("-", at: a.startIndex)
        display.text = a
    }
    
    
    @IBAction func plus(_ sender: UIButton) {
      c = Double(a) ?? 0
        a = ""
        action = sender.tag
    }
    
    @IBAction func go(_ sender: Any) {
        var aDouble = Double(a) ?? 0
   
        switch action {
        case 11:
            b = c  + aDouble
            display.text = String (b)

        case 22:
            b = c  - aDouble
            display.text = String (b)
        case 33:
            b = c  * aDouble
            display.text = String (b)
        case 44:
            b = c / aDouble
            display.text = String (b)
        default:
            display.text = "error"
        }
        c = 0
        a=""
        b=0
     }
   
}

