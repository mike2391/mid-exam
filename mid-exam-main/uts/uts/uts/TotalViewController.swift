//
//  TotalViewController.swift
//  uts
//
//  Created by prk on 23/11/22.
//

import UIKit

struct saver{
    var ImageFood: String?
    var PriceFood: Int?
}
var TotalArr : [saver] = []

class TotalViewController: UIViewController{
    
    var totalPrice : Int = 0
    
    @IBOutlet weak var TableView: UITableView!
    @IBOutlet weak var TotalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TableView.delegate = self
        TableView.dataSource = self
        
        for i in 0...TotalArr.count-1{
            totalPrice += TotalArr[i].PriceFood as! Int
        }
        TotalLabel.text = "Rp.\(totalPrice)"
    }
}
    
    extension TotalViewController: UITableViewDelegate, UITableViewDataSource{
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return TotalArr.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TotalTableViewCell
            let ImageOfFoodCart = TotalArr[indexPath.row].ImageFood
            let PriceOfFoodCart = TotalArr[indexPath.row].PriceFood
            
            cell.ImageOfFoodCell.image = UIImage(named: ImageOfFoodCart as! String)
            cell.PriceOfFoodCell.text = "Rp.\(PriceOfFoodCart!)"
            
            return cell
        }
        
        
    }
