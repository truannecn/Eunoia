//
//  TimerViewController.swift
//  Eunoia
//
//  Created by Jamie Kuang on 7/22/21.
//

import UIKit

class TimerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var ourTimer = Timer()
    var timeDisplayed = 0
    
    @IBOutlet var timerViewLabel: UILabel!
    
    @IBAction func startButton(_ sender: UIButton) {
        ourTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(Action), userInfo: nil, repeats: true)
    }
    
    @IBAction func endButton(_ sender: UIButton) {
    }
    
    @IBAction func pauseButton(_ sender: UIButton) {
        ourTimer.invalidate()
    }
    
    @IBAction func restartButton(_ sender: UIButton) {
        ourTimer.invalidate()
        timeDisplayed = 0
        timerViewLabel.text = "0"
    }
    

    
    @objc func Action(){
        timeDisplayed += 1
        timerViewLabel.text = String(timeDisplayed)
    }
    
    

}
