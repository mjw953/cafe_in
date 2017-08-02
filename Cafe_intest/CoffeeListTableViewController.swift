//
//  CoffeeListTableViewController.swift
//  Cafe_intest
//
//  Created by CAUADC on 2017. 8. 1..
//  Copyright © 2017년 caffe in. All rights reserved.
//

import UIKit

class CoffeeListTableViewController: UITableViewController {
    
    var coffees = [Coffee]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
      
        let coffee1 = Coffee(title: "스타벅스", nameOfCoffee: "아메리카노", description: "맛있다", coffeeImage: "starbucks", price: "4500", location: "흑석동")
        
       
        let coffee2 = Coffee(title: "탐탐", nameOfCoffee: "카페라떼", description: "달달하다", coffeeImage: "tomtom", price: "4300", location: "상도동")
    
        let coffee3 = Coffee(title: "엔젤인어스", nameOfCoffee: "카페모카", description: "맛이있다.", coffeeImage: "angelinus", price: "4900", location: "동작역")
        
        coffees.append(coffee1)
        coffees.append(coffee2)
        coffees.append(coffee3)
        
    }

   
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 3
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        let coffee = coffees[indexPath.row]
        
        cell.textLabel?.text = coffee.title
        cell.detailTextLabel?.text = coffee.nameOfCoffee
        cell.imageView?.image = UIImage(named: coffee.coffeeImage)
        
        return cell
        
        
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

  
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        // 다음화면의 ViewController Instance 가져오기
        let vc = segue.destination as? CoffeeDetailTableViewController
        
        // 선택된 Cell의 Index 가져오기
        let coffeeIndex = self.tableView.indexPath(for: sender as! UITableViewCell)
        
        if let CoffeeDetailTableViewController = vc {
            CoffeeDetailTableViewController.coffeeImage = coffees[coffeeIndex!.row].coffeeImage
            CoffeeDetailTableViewController.title = coffees[coffeeIndex!.row].title
            CoffeeDetailTableViewController.nameOfCoffee = coffees[coffeeIndex!.row].nameOfCoffee
            CoffeeDetailTableViewController.price = coffees[coffeeIndex!.row].price
            
        
        }
    }
 
}
