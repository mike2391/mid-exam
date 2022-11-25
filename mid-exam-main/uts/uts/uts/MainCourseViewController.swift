//
//  MainCourseViewController.swift
//  uts
//
//  Created by prk on 19/11/22.
//

import UIKit

class MainCourseViewController: UIViewController {
    var MainArray: [foodPreview] = []
    
    func initialApp(){
        MainArray.append(foodPreview(FoodImage: "Main 1", FoodPrice: 120000))
        MainArray.append(foodPreview(FoodImage: "Main 2", FoodPrice: 125000))
        MainArray.append(foodPreview(FoodImage: "Main 3", FoodPrice: 120000))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        initialApp()
        let foodController = segue.destination as? FoodList
        if segue.identifier == "main1"{
            foodController?.Image = MainArray[0].FoodImage
            foodController?.Price = MainArray[0].FoodPrice
        }
        else if segue.identifier == "main2"{
            foodController?.Image = MainArray[1].FoodImage
            foodController?.Price = MainArray[1].FoodPrice
        }
        else if segue.identifier == "main3"{
            foodController?.Image = MainArray[2].FoodImage
            foodController?.Price = MainArray[2].FoodPrice
        }
    }


}
