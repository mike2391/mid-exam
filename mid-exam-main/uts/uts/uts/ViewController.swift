//
//  ViewController.swift
//  uts
//
//  Created by prk on 19/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    var FoodImage: String?
    var FoodPrice: Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Total(_ sender: Any) {
        performSegue(withIdentifier: "Total", sender: self)

    }
    
}

