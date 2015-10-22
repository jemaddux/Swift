//
//  ViewController.swift
//  What is the Weather
//
//  Created by John Maddux on 10/4/15.
//  Copyright © 2015 John Maddux. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var weatherLabel: UILabel!
    @IBAction func getWeatherButton(sender: AnyObject) {
        var wasSuccessful = false
        let attemptedUrl = NSURL(string: "http://www.weather-forecast.com/locations/" + cityTextField.text!.stringByReplacingOccurrencesOfString(" ", withString: "-") + "/forecasts/latest")
        if let url = attemptedUrl {
            let task = NSURLSession.sharedSession().dataTaskWithURL(url) { (data, response, error ) -> Void in
                if let urlContent = data {
                    let webContent = NSString(data: urlContent, encoding: NSUTF8StringEncoding)
                    let websiteArray = webContent?.componentsSeparatedByString("<span class=\"read-more-content\"> <span class=\"phrase\">")
                    if websiteArray!.count > 1 {
                        let weatherArray = websiteArray![1].componentsSeparatedByString("</span></span></span></p>")
                        if weatherArray.count > 1 {
                            let weatherSummary = weatherArray[0].stringByReplacingOccurrencesOfString("&deg;", withString: "º")
                            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                                self.weatherLabel.text = weatherSummary
                                wasSuccessful = true
                            })
                        }
                    }
                }
                if wasSuccessful == false {
                    self.weatherLabel.text = "Can't find weather for that city"
                }
            }
            task.resume()
        } else {
            self.weatherLabel.text = "Invalid City"
        }
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool{
//        cityTextField.resignFirstResponder()
        self.view.endEditing(true)
        return false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.cityTextField.delegate = self;
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

