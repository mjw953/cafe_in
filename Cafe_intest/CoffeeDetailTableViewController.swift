//
//  CoffeeDetailTableViewController.swift
//  Cafe_intest
//
//  Created by CAUADC on 2017. 8. 2..
//  Copyright © 2017년 caffe in. All rights reserved.
//

import UIKit

class CoffeeDetailTableViewController: UITableViewController {

    
    var coffeeImage: String?
    var price : String?
    var nameOfCoffee : String?
    var title : String?
    
    @IBOutlet weak var detailCoffeeImage: UIImageView!
    
    @IBOutlet weak var detailPrice: UILabel!
    
    @IBOutlet weak var detailNameOfCoffee: UILabel!
   
    @IBOutlet weak var detailTitle: UILabel!
    
    
    
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let coffeeImageVal = self.coffeeImage {
            self.detailCoffeeImage.image = UIImage(named: coffeeImageVal)
        }
        
        if let priceVal = self.price {
            self.detailPrice.text = priceVal
        }
        
        if let nameOfCoffeeVal = self.nameOfCoffee{
            self.detailNameOfCoffee.text = nameOfCoffeeVal
        }
        
        if let titleVal = self.title {
            self.detailTitle.text = titleVal
        }

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
