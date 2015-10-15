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
                let websiteArray = webContent?.componentsSeparatedByString("<span class=\"read-more-content\"> <span class=\"phrase\">")
                if websiteArray!.count > 0 {
                    let weatherArray = websiteArray![1].componentsSeparatedByString("</span></span></span></p>")
                    let weatherSummary = weatherArray[0]
                    dispatch_async(dispatch_get_main_queue(), { () -> Void in
                        self.weatherLabel.text = weatherSummary
                    })
                }
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

