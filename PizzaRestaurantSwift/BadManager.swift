//
//  BadManager.swift
//  PizzaRestaurantSwift
//
//  Created by Michael Reining on 1/16/15.
//  Copyright (c) 2015 Mike Reining. All rights reserved.
//

import Foundation

class BadManager: KitchenDelegate {
    
    // The Kitchen Manager conforms to the KitchenDelegate
    
    func kitchenOrder(kitchen: Kitchen, shouldMakePizzaOfSize: Pizza, withToppings: [Topping]) -> Bool {
        
        for topping in withToppings {
            if topping.name == "anchovies" {
                println("Bad manager says: I make no anchovie pizzas")
                return false
            }
        }
        
        return true
    }
    
    func kitchenShouldUpgradeOrder(kitchen: Kitchen) -> Bool {
        println("Bad manager says: No upgrades for you")
        return false
    }
    
    func kitchenDidMakePizza(kitchen: Kitchen) {
        
    }
}