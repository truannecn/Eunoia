//
//  TimerViewController.swift
//  Eunoia
//
//  Created by Jamie Kuang on 7/22/21.
//

import UIKit
import Foundation

class TimerViewController: UIViewController {

    var ourTimer = Timer()
    var timerDisplayed = 0
    
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBAction func startBTN(_ sender: Any) {
        ourTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(Action), userInfo: nil, repeats: true)
    }
    
    @IBAction func pauseBTN(_ sender: Any) {
        ourTimer.invalidate()
    }
    
    @IBAction func restartBTN(_ sender: Any) {
        ourTimer.invalidate()
        timerDisplayed = 0
        timeLabel.text = "0"
    }
    
    @objc func Action(){
        timerDisplayed += 1
        timeLabel.text = String(timerDisplayed)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    

}
