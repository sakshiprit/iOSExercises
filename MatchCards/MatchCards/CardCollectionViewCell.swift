//
//  CardCollectionViewCell.swift
//  MatchCards
//
//  Created by Pritam Bolenwar on 26/02/21.
//

import UIKit

class CardCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var frontImageView: UIImageView!
    @IBOutlet weak var backImageView: UIImageView!
    
    var card:Card?
    
    func configureCell(card:Card){
        
        //Keep track track of the card this cell represents
        self.card = card
        
        // Set the front image view to the image that represents the crad
        frontImageView.image = UIImage(named: card.imageName)
        
        // reset the state of the cell by checking the flipped state of the card and then showing the front or the back imageview accordingly
        if card.isFlipped == true{
            // show frontimage view
            
            flipUp(speed: 0)
        }
        else {
            //  show back iamge view
            flipDown(speed: 0)
        }
        
    }
    func flipUp(speed:TimeInterval = 0.3){
        // Flip up animation
        UIView.transition(from: backImageView, to: frontImageView, duration: speed, options: [.showHideTransitionViews,.transitionFlipFromLeft], completion: nil)
        
        // status of the card
        card?.isFlipped = true
    }
    func flipDown(speed:TimeInterval = 0.3){
        // Flip down animation
        UIView.transition(from: frontImageView, to: backImageView, duration: speed, options: [.showHideTransitionViews,.transitionFlipFromLeft], completion: nil)
        
        
    
        // status of the card
        card?.isFlipped = false
    }
    
}
