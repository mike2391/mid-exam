//
//  TableViewCell.swift
//  mms
//
//  Created by prk on 26/11/22.
//

import UIKit

class TableViewCell: UITableViewCell {
    

    @IBOutlet weak var ImageFoodCell: UIImageView!
    @IBOutlet weak var PriceFoodCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
