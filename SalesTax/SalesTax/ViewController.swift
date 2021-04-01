//
//  ViewController.swift
//  SalesTax
//
//  Created by Pritam Bolenwar on 17/02/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalPriceLbl: UILabel!
    @IBOutlet weak var priceTxt: UITextField!
    @IBOutlet weak var salesTax: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalPriceLbl.text = ""
    }

    @IBAction func calculateButton(_ sender: Any) {
        let price = Double (priceTxt.text!)!
        let Tax = Double (salesTax.text!)!
        
        let totalSalesTax = price * Tax
        let totalPrice = price + totalSalesTax
        totalPriceLbl.text = "$\(totalPrice)"
        
    }
    
}

