//
//  ViewController.swift
//  WarCardGame
//
//  Created by Pritam Bolenwar on 24/02/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func dealTappedButton(_ sender: UIButton) {
        
        let leftNumber =  Int.random(in: 2...14)
        
        let rightNumber =  Int.random(in: 2...14)
       
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        
        rightImageView.image = UIImage(named:"card\(rightNumber)")
        
        if leftNumber > rightNumber{
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        }
        else if rightNumber > leftNumber{
            
             rightScore += 1
                rightScoreLabel.text = String(rightScore)
        }
        else{
            
        }
    }
    


}

