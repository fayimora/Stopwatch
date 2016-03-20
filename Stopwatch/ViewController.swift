//
//  ViewController.swift
//  Stopwatch
//
//  Created by Fayimora Femi-Balogun on 19/03/2016.
//  Copyright © 2016 Fayimora Femi-Balogun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  var timer = NSTimer()
  var time = 0
  
  @IBOutlet var timerLabel: UILabel!
  
  func increaseTimer() {
    time++
    timerLabel.text = String(time)
  }
  
  @IBAction func play(sender: UIBarButtonItem) {
    if !timer.valid {
      timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("increaseTimer"), userInfo: nil, repeats: true)
    }
  }
  
  @IBAction func pause(sender: UIBarButtonItem) {
    timer.invalidate()
  }
  
  @IBAction func reset(sender: UIBarButtonItem) {
    timer.invalidate()
    time = 0
    timerLabel.text = "0"
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

