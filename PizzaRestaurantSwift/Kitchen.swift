//
//  Kitchen.swift
//  PizzaRestaurantSwift
//
//  Created by Michael Reining on 1/16/15.
//  Copyright (c) 2015 Mike Reining. All rights reserved.
//

import Foundation

class Kitchen: RestaurantManager {
    var name: String
    init (name: String) {
        self.name = name
    }
    
    func makeLargePepperoniPizza() -> Pizza {
        var peperoni = Topping(name: "Pepperoni")
        var cheese = Topping(name: "Cheese")
        var toppings = [peperoni,cheese]
        
        println("NEW PIZZA COMING UP")
        var pizza = Pizza(size: .Large, toppings: toppings)
        
        println("Pizza Size: \(pizza.size.printName())")
        print("Pizza Toppings: ")
        for topping in toppings {
            print("\(topping.name), ")
        }
        return pizza
    }
    
    func kitchenOrder(kitchen: Kitchen, shouldMakePizzaOfSize: Pizza, withToppings: [Topping]) {
        
    }
    
    func kitchenShouldUpgradeOrder(kitchen: Kitchen) -> Bool {
        return true
    }
    
    func kitchenDidMakePizza(kitchen: Kitchen) -> Bool? {
        return true
    }

    
}