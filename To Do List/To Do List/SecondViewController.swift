//
//  SecondViewController.swift
//  To Do List
//
//  Created by John Maddux on 10/2/15.
//  Copyright © 2015 John Maddux. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBAction func addItemButton(sender: AnyObject) {
        toDoListArray.append(textField.text!)
        textField.text = ""
        NSUserDefaults.standardUserDefaults().setObject(toDoListArray, forKey: "toDoListArray")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool{
        textField.resignFirstResponder()
        return true
    }
    
}

