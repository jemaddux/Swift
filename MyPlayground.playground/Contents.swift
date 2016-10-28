//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var dict = {}

var count = 0
func countUp() {
    count += 1
}

var timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: count, selector: "countUp", userInfo: nil, repeats: true)
timer.invalidate()

