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
        var userName = NSUserDefaults.standardUserDefaults().objectForKey("name")
        print(userName)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

