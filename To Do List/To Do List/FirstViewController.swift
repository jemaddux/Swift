//
//  FirstViewController.swift
//  To Do List
//
//  Created by John Maddux on 10/2/15.
//  Copyright © 2015 John Maddux. All rights reserved.
//

import UIKit

var toDoListArray = [String]()

class FirstViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var toDoListTable: UITableView!
     
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if(NSUserDefaults.standardUserDefaults().objectForKey("toDoListArray") != nil) {
            toDoListArray = NSUserDefaults.standardUserDefaults().objectForKey("toDoListArray") as! [String]
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoListArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "toDoListItemCell")
        cell.textLabel?.text = toDoListArray[indexPath.row]
        return cell
        
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        if editingStyle == UITableViewCellEditingStyle.Delete {
            toDoListArray.removeAtIndex(indexPath.row)
            NSUserDefaults.standardUserDefaults().setObject(toDoListArray, forKey: "toDoListArray")
            toDoListTable.reloadData()
        }
        return true
    }
    
    override func viewDidAppear(animated: Bool) {
        toDoListTable.reloadData()
    }

}

