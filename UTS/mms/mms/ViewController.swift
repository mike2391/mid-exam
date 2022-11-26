//
//  ViewController.swift
//  mms
//
//  Created by prk on 26/11/22.
//

import UIKit

class ViewController: UIViewController {

    var FoodImage: String?
    var FoodPrice: Int?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    

    @IBAction func cartico(_ sender: Any) {
        performSegue(withIdentifier: "cart", sender: self)

    }
    

}

