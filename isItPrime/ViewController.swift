//
//  ViewController.swift
//  isItPrime
//
//  Created by John Maddux on 9/27/15.
//  Copyright © 2015 John Maddux. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberInput: UITextField!
    @IBOutlet weak var resultField: UILabel!
    
    @IBAction func resultButton(sender: AnyObject) {
        var isPrime = true;
        
        let number = Int(numberInput.text!)!
        if(number == 1){
            isPrime = false
        }
        if(number != 2 && number != 1){
            for var i = 2; i < number; i++ {
                if(number % i == 0){
                    isPrime = false
                }
            }
        }
        
        if(isPrime == false){
            resultField.text = "Not Prime"
        }else{
            resultField.text = "Prime!"
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

