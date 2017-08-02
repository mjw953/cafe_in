//
//  coffee.swift
//  Cafe_intest
//
//  Created by CAUADC on 2017. 8. 1..
//  Copyright © 2017년 caffe in. All rights reserved.
//

import Foundation

class Coffee {
    var title:String
    var nameOfCoffee:String
    var description:String
    var coffeeImage:String
    var price:String
    var location:String
   
    init(title:String,
         nameOfCoffee:String,
         description:String,
         coffeeImage:String,
         price:String,
         location:String)
    {
        self.title = title
        self.nameOfCoffee = nameOfCoffee
        self.description = description
        self.coffeeImage =  coffeeImage
        self.price = price
        self.location = location
   
    }
}
    
