//
//  ViewController.swift
//  Is it Prime
//
//  Created by Jerome Heuze on 4/28/15.
//  Copyright (c) 2015 Nebula Studio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblResult: UILabel!
    
    @IBOutlet weak var fldNumber: UITextField!
    
    
    @IBAction func btnGuess(sender: AnyObject) {
        
        var enteredNumber = fldNumber.text.toInt()
        var isPrime = true
        if enteredNumber! == 1 {isPrime = false;}
        if enteredNumber! != 2 && enteredNumber! != 1 {
            for var i = 2; i < enteredNumber!; i++ {
                if enteredNumber! % i == 0 {
                    isPrime = false
                }
            }
        }

        if isPrime {
            lblResult.textColor = UIColor.greenColor()
            lblResult.text = "You are correct! \(enteredNumber!) is prime."
        } else {
            lblResult.textColor = UIColor.orangeColor()
            lblResult.text = "You are wrong! \(enteredNumber!) is not prime."
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

