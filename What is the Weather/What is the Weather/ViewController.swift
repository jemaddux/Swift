//
//  ViewController.swift
//  What is the Weather
//
//  Created by John Maddux on 10/4/15.
//  Copyright © 2015 John Maddux. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var weatherLabel: UILabel!
    @IBAction func getWeatherButton(sender: AnyObject) {
        let url = NSURL(string: "http://www.weather-forecast.com/locations/Paris/forecasts/latest")!
        let task = NSURLSession.sharedSession().dataTaskWithURL(url) { (data, response, error ) -> Void in
            if let urlContent = data {
                let webContent = NSString(data: urlContent, encoding: NSUTF8StringEncoding)
                print(webContent)
            }
        }
        task.resume()
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

