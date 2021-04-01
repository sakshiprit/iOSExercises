//
//  ViewController.swift
//  StopWatch
//
//  Created by Pritam Bolenwar on 03/02/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var startStopButton: UIButton!
    
    var timer: Timer?
    var isStarted = false
    var counter = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @objc func updateTimer(){
        counter += 0.1
        timerLabel.text = String(round(counter*10)/10)
    }
    @IBAction func startButton(_ sender: UIButton) {
        if isStarted
        {
            timer?.invalidate()
            isStarted = false
            startStopButton.setTitle("Start", for: .normal)
        }
        else
        {
            timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
            isStarted = true
            startStopButton.setTitle("Stop", for: .normal)
        }
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        counter = 0.0
        timerLabel.text = "0.0"
        if isStarted{timer?.invalidate()
            isStarted = false
            startStopButton.setTitle("Start", for: .normal)
        }
    }
}

