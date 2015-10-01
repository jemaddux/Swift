//
//  ViewController.swift
//  Stopwatch
//
//  Created by John Maddux on 9/29/15.
//  Copyright © 2015 John Maddux. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = NSTimer()
    var timeInHundreths  = 0.0
    
    @IBOutlet weak var timerLabel: UILabel!
    
    func increaseTimer(){
        timeInHundreths++
        timerLabel.text = "\(timeInHundreths / 100.0)"
    }
    
    @IBAction func play(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(0.01, target: self, selector: Selector("increaseTimer"), userInfo: nil, repeats: true)
        
    }
    @IBAction func pause(sender: AnyObject) {
        timer.invalidate()
    }
    @IBAction func stopAndReset(sender: AnyObject) {
        timer.invalidate()
        timeInHundreths = 0.0
        timerLabel.text = "\(timeInHundreths / 100.0)"
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

