//
//  ViewController.swift
//  catAge
//
//  Created by John Maddux on 9/26/15.
//  Copyright © 2015 John Maddux. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var humanAgeBox: UITextField!
    @IBOutlet weak var catAgeLabel: UILabel!
    
    @IBAction func getCatAgeButton(sender: AnyObject) {
        var catAge = Int(humanAgeBox.text!)! * 7
        catAgeLabel.text = "Your cat is \(catAge) in cat years."
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

