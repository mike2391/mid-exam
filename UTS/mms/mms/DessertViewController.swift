//
//  DessertViewController.swift
//  mms
//
//  Created by prk on 26/11/22.
//

import UIKit

class DessertViewController: UIViewController {
    var DessertArray: [Food] = []
    
    func initialApp(){
        DessertArray.append(Food(FoodImage: "dessert 1", FoodPrice: 12000))
        DessertArray.append(Food(FoodImage: "dessert 2", FoodPrice: 15000))
        DessertArray.append(Food(FoodImage: "dessert 3", FoodPrice: 20000))
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        initialApp()
        let foodController = segue.destination as? FoodInfoViewController
        if segue.identifier == "des1"{
            foodController?.Image = DessertArray[0].FoodImage
            foodController?.Price = DessertArray[0].FoodPrice
        }
        else if segue.identifier == "des2"{
            foodController?.Image = DessertArray[1].FoodImage
            foodController?.Price = DessertArray[1].FoodPrice
        }
        else if segue.identifier == "des3"{
            foodController?.Image = DessertArray[2].FoodImage
            foodController?.Price = DessertArray[2].FoodPrice
        }
    }

    @IBAction func back(_ sender: Any) {
        performSegue(withIdentifier: "back3", sender: self)

    }
    
}
