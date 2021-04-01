//
//  DemoCustomTableViewCell.swift
//  CustomCells
//
//  Created by Pritam Bolenwar on 17/02/21.
//

import UIKit

class DemoCustomTableViewCell: UITableViewCell {
    @IBOutlet var myLabel : UILabel!
    @IBOutlet var myImage : UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
