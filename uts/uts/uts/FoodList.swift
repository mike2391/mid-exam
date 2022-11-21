//
//  FoodList.swift
//  uts
//
//  Created by prk on 19/11/22.
//

import UIKit

class FoodList: UIViewController {

    @IBOutlet weak var FoodImage: UIImageView!
    @IBOutlet weak var FoodPrice: UILabel!
    
    var Image: String?
    var Price: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        FoodImage.image = UIImage(named: Image as! String)
        FoodPrice.text = "Rp. \(Price!)"
        // Do any additional setup after loading the view.
    }
    
}
