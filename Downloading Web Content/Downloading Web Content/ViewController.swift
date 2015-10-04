//
//  ViewController.swift
//  Downloading Web Content
//
//  Created by John Maddux on 10/4/15.
//  Copyright © 2015 John Maddux. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url  = NSURL(string: "http://www.stackoverflow.com")!
        webView.loadRequest(NSURLRequest(URL: url))
        
//        let task = NSURLSession.sharedSession().dataTaskWithURL(url) { (data, response, error) -> Void in
//            // Will happen when task is complete
//            if let urlContent = data {
//                let webContent = NSString(data: urlContent, encoding: NSUTF8StringEncoding)
//                dispatch_async(dispatch_get_main_queue(), { () -> Void in
//                    self.webView.loadHTMLString(String(webContent!), baseURL: nil)
//                })
//            }
//        }
//        task.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

