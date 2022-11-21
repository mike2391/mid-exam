//
//  AppetizerListViewController.swift
//  uts
//
//  Created by prk on 19/11/22.
//

import UIKit

class AppetizerListViewController: UIViewController {
    var AppetizerArray: [foodPreview] = []
    
    func initialApp(){
        AppetizerArray.append(foodPreview(FoodImage: "Appetizer 1", FoodPrice: 12000))
        AppetizerArray.append(foodPreview(FoodImage: "Appetizer 2", FoodPrice: 15000))
        AppetizerArray.append(foodPreview(FoodImage: "Appetizer 3", FoodPrice: 20000))
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        initialApp()
        let foodController = segue.destination as? FoodList
        if segue.identifier == "apt1"{
            foodController?.Image = AppetizerArray[0].FoodImage
            foodController?.Price = AppetizerArray[0].FoodPrice
        }
        else if segue.identifier == "apt2"{
            foodController?.Image = AppetizerArray[1].FoodImage
            foodController?.Price = AppetizerArray[1].FoodPrice
        }
        else if segue.identifier == "apt3"{
            foodController?.Image = AppetizerArray[2].FoodImage
            foodController?.Price = AppetizerArray[2].FoodPrice
        }
    }

}
