//
//  ViewController.swift
//  Core Data Demo
//
//  Created by John Maddux on 12/3/15.
//  Copyright © 2015 John Maddux. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Creating object and saving to database
        let appDel: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let context: NSManagedObjectContext = appDel.managedObjectContext
        
        
        var newUser = NSEntityDescription.insertNewObjectForEntityForName("Users", inManagedObjectContext: context)
        newUser.setValue("John", forKey: "username")
        newUser.setValue("1234", forKey: "password")
        do {
            try context.save()
            
        } catch {
            print("Could not save")
        }


        // Loading object back
        let request = NSFetchRequest(entityName: "Users")
        request.returnsObjectsAsFaults = false
        do{
            let results = try context.executeFetchRequest(request)
            print(results)
            if (results.count > 0){
                for result in results as! [NSManagedObject]{
                    print(result.valueForKey("username")!)
                    print(result.valueForKey("password")!)
                }
            }
        }catch{
            print("Cannot print results")
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

