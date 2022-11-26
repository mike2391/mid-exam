//
//  TotalViewController.swift
//  mms
//
//  Created by prk on 26/11/22.
//

import UIKit

struct saver{
    var ImageFood: String?
    var PriceFood: Int?
}
var TotalArr : [saver] = []

class TotalViewController: UIViewController {
    
    
    @IBOutlet weak var TableView: UITableView!
    @IBOutlet weak var TotalPrice: UILabel!
    
    var totalPrice : Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TableView.delegate = self
        TableView.dataSource = self
        
        for i in 0...TotalArr.count-1{
            totalPrice += TotalArr[i].PriceFood as! Int
        }
        TotalPrice.text = "Rp.\(totalPrice)"
    }
    @IBAction func back(_ sender: Any) {
        performSegue(withIdentifier: "backhome", sender: self)

    }
}
    
    
    extension TotalViewController: UITableViewDelegate, UITableViewDataSource{
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return TotalArr.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
            let ImageOfFoodCart = TotalArr[indexPath.row].ImageFood
            let PriceOfFoodCart = TotalArr[indexPath.row].PriceFood
            
            cell.ImageFoodCell.image = UIImage(named: ImageOfFoodCart as! String)
            cell.PriceFoodCell.text = "Rp.\(PriceOfFoodCart!)"
            
            return cell
            
        }
        
    }

