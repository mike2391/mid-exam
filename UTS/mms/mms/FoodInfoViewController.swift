//
//  FoodInfoViewController.swift
//  mms
//
//  Created by prk on 26/11/22.
//

import UIKit

class FoodInfoViewController: UIViewController {

    @IBOutlet weak var FoodImage: UIImageView!
    @IBOutlet weak var FoodPrice: UILabel!
    
    var Image: String?
    var Price: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        FoodImage.image = UIImage(named: Image as! String)
        FoodPrice.text = "Rp. \(Price!)"
    }
    



    
     @IBAction func BuyButton(_ sender: Any) {
         performSegue(withIdentifier: "BuyButton", sender: self)
         TotalArr.append(saver(ImageFood: Image, PriceFood:  Price))
         
     }
}
