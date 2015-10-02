//
//  ViewController.swift
//  Permanent Storage
//
//  Created by John Maddux on 10/1/15.
//  Copyright © 2015 John Maddux. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        NSUserDefaults.standardUserDefaults().setObject("Rob", forKey: "name")
        let userName = NSUserDefaults.standardUserDefaults().objectForKey("name")!
        print(userName)
        
        let arr = [1,2,3,4]
        NSUserDefaults.standardUserDefaults().setObject(arr, forKey: "array")
        let returnedArray = NSUserDefaults.standardUserDefaults().objectForKey("array") as NSArray
        
        for x in returnedArray {
            print(x)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

