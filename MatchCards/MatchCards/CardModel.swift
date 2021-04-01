//
//  CardModel.swift
//  MatchCards
//
//  Created by Pritam Bolenwar on 26/02/21.
//

import Foundation

class CardModel{
    
    func getCards() -> [Card] {
        // Declare array of cards
      var generateCards = [Card]()
        
        // randomily generate 8 pairs of cards
        for _ in 1...8{
            let randomNumber = Int.random(in: 1...13)
            
            
            let cardOne = Card()
            let cardTwo = Card()
            
            cardOne.imageName = "card\(randomNumber)"
            cardTwo.imageName =  "card\(randomNumber)"
            
            generateCards += [cardOne, cardTwo]
            
            print(randomNumber)
        }
        //calculation for randomization
        generateCards.shuffle()
     
        
        // return cards
        return generateCards
        
    }
}
