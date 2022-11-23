//
//  FoodListStorage.swift
//  uts
//
//  Created by prk on 23/11/22.
//

import Foundation

struct FoodListStorage{
    var foodStorage = [foodPreview]()
    
    mutating func loadStorage(){
        foodStorage.append(foodPreview(FoodImage: ["","",""], FoodPrice: <#T##Int#>))
    }
}
