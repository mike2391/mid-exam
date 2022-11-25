//
//  TotalTableViewCell.swift
//  uts
//
//  Created by prk on 25/11/22.
//

import UIKit

class TotalTableViewCell: UITableViewCell {
    

    @IBOutlet weak var ImageOfFoodCell: UIImageView!
    @IBOutlet weak var PriceOfFoodCell: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
