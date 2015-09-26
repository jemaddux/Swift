//
//  ViewController.swift
//  guessingGame
//
//  Created by John Maddux on 9/26/15.
//  Copyright © 2015 John Maddux. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var numberGuessed: UITextField!
    @IBOutlet weak var resultField: UILabel!
    
    @IBAction func guessButton(sender: AnyObject) {
        let randomNumber = Int(arc4random_uniform(6))
        let integerGuessed = Int(numberGuessed.text!)
        if( integerGuessed == randomNumber){
            // You were right
            resultField.text = "You got it!"
        }else if( integerGuessed > randomNumber){
            // You were too high the number was xx
            resultField.text = "You were too high. The number was \(randomNumber)"
        }else{
            // You were too low, the number was yy
            resultField.text = "You were too low. The number was \(randomNumber)"
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

