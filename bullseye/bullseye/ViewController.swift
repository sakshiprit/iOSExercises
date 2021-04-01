//
//  ViewController.swift
//  bullseye
//
//  Created by Pritam Bolenwar on 22/09/20.
//  Copyright © 2020 Pritam Bolenwar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currentValue: Int = 50
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var targetLabel:UILabel!
    
    @IBOutlet weak var scoreLabel:UILabel!
    
    @IBOutlet weak var roundLabel:UILabel!
    
  
    
    
    var targetValue = 0
    
    var giveSliderNumber = 0
    
    var score = 0
    
    var round = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let roundedValue = slider.value.rounded()
         currentValue = Int(roundedValue)
        startNewGame()
        
        let thumbImageNormal = #imageLiteral(resourceName: "SliderThumb-Normal")
        slider.setThumbImage(thumbImageNormal, for: .normal)
        
        let thumbImageHighlighted = #imageLiteral(resourceName: "SliderThumb-Highlighted")
        slider.setThumbImage(thumbImageHighlighted, for: .highlighted)
        
        let insets = UIEdgeInsets(top: 0, left: 14, bottom: 0, right: 14)
        
        let trackLeftImage = #imageLiteral(resourceName: "SliderTrackLeft")
        let trackleftResizeable = trackLeftImage.resizableImage(withCapInsets: insets)
        slider.setMinimumTrackImage(trackLeftImage, for: .normal)
        
        
        let trackRightImage = #imageLiteral(resourceName: "SliderTrackRight")
        let trackRightResizeable = trackRightImage.resizableImage(withCapInsets: insets)
        slider.setMaximumTrackImage(trackRightImage, for: .normal)
    }
    @IBAction func showAlert () {
        
        let difference = abs(currentValue - targetValue)
        
       var points = 100 - difference
        
        score += points
        
        let title: String
        if difference == 0{
            title = "Perfect"
            points += 100
        }else if difference < 5 {
            title = "You almost had it"
            if difference == 1{
                points += 50}
        }else if difference < 10 {
            title = "Pretty good"
        }else{
            title = "Not even close..."
        }
        
        let message = "\nThe score is \(points) points"
        
       let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .default, handler: {
            action in
            self.startNewRound()
        })
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
        
        
    }
    @IBAction func sliderMoved(_ slider: UISlider) {
        let roundedValue = slider.value.rounded()
        currentValue = Int(roundedValue)
        
    }
    func startNewRound(){
    targetValue = Int.random(in: 1...100)
        round += 1
        currentValue = 50
        slider.value = Float(currentValue)
    updateLabel()
    }
    
   func updateLabel(){
        targetLabel.text = String(targetValue)
        scoreLabel.text = String(score)
    roundLabel.text = String(round)
    }
   @IBAction func startNewGame () {
        score = 0
        round = 0
        startNewRound()
        
    }

    }

