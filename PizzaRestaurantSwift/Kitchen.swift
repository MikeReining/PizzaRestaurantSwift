//
//  Kitchen.swift
//  PizzaRestaurantSwift
//
//  Created by Michael Reining on 1/16/15.
//  Copyright (c) 2015 Mike Reining. All rights reserved.
//

import Foundation

class Kitchen {
    var name: String
    init (name: String) {
        self.name = name
    }
    
    // setup delegate variable
    var kitchenDelegate: KitchenDelegate? 

    func makePepperoniPizza() -> Pizza {
        var peperoni = Topping(name: "Pepperoni")
        var cheese = Topping(name: "Cheese")
        var toppings = [peperoni,cheese]
        
        var pizza = Pizza(size: .Small, toppings: toppings)
        
        
        if let kd = kitchenDelegate {
            if kd.kitchenShouldUpgradeOrder(self) {
                pizza.size = .Large
                println("KITCHEN DELEGATE SAYS: shouldUpgradeOrder")
            }
            
            if kd.kitchenOrder(self, shouldMakePizzaOfSize: pizza, withToppings: toppings) {
                println("KITCHEN DELEGATE SAYS: shouldMakePizzaOfSize")
                println("Pizza Size: \(pizza.size.printName())")
                print("Pizza Toppings: ")
                for topping in toppings {
                    print("\(topping.name), ")
                }
            } else {
            println("KITCHEN DELEGATE SAYS: MAKE NO PIZZA")
            }
         
            
        }
        return pizza
    }

    
}