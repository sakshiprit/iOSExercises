//
//  ViewController.swift
//  MatchCards
//
//  Created by Pritam Bolenwar on 25/02/21.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
   
    
    @IBOutlet weak var collectionView: UICollectionView!
    let model = CardModel()
    var cardsArray = [Card]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        cardsArray = model.getCards()
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    //MARKS: -Collection view functions for delegate and datasource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cardsArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // Get cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CardCell", for: indexPath) as! CardCollectionViewCell
        
        // Get the card from the card array
        let card = cardsArray[indexPath.row]
        
        // Configure
        cell.configureCell(card: card)
        
        
        // Return
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
        // Get a reference to the cell that was tapped
       let cell = collectionView.cellForItem(at: indexPath) as? CardCollectionViewCell
        
        // determine the status of the card to flip it
        if cell?.card?.isFlipped == false {
            //Flip th card up
            cell?.flipUp()
        }
        else{
            //Flip th card down
            cell?.flipDown()
        }
    
    }


}

