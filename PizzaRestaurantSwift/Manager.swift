//
//  Manager.swift
//  PizzaRestaurantSwift
//
//  Created by Michael Reining on 1/16/15.
//  Copyright (c) 2015 Mike Reining. All rights reserved.
//

import Foundation


class Manager: KitchenDelegate {
    var managerType: ManagerType
    init(managerType: ManagerType) {
        self.managerType = managerType
    }
    // The Kitchen Manager conforms to the KitchenDelegate
    
    func kitchenOrder(kitchen: Kitchen, shouldMakePizzaOfSize: PizzaSize, withToppings: [Topping]) -> Bool {
        println("")
        println("Question: Should this pizza be made?")
        switch managerType {
        case .Nice:
            println("Manager says: I make anything you like")
            return true
        case .Regular:
            println("Manager says: You can have any toppings you like")
            return true
        case .Bad:
            for topping in withToppings {
                if topping.name == "anchovies" {
                    println("Manager says: Anchovies? I make no anchovie pizzas")
                    return false
                }
            }
            println("Fine, you can have this pizza")

        }
        return true
    }
    
    func kitchenShouldUpgradeOrder(kitchen: Kitchen) -> Bool {
        println("")
        println("Question: Should this pizza be upgraded?")

        switch managerType {
        case .Nice:
            println("Manager says: I upgrade all orders")
            return true
        case .Regular:
            println("Manager says: Sorry, no free upgrades today")
            return false
        case .Bad:
            println("Manager says: I never upgrade Pizzas")
            return false
        }
        
    }
    
    func kitchenDidMakePizza(kitchen: Kitchen) {
        println("")
        println("Question: Was Pizza Made?")
        switch managerType {
        case .Nice:
            println("Manager says: Of course. I love making you pizza")
        case .Regular:
            println("Manager says: Here is your pizza")
        case .Bad:
            println("Manager says: Yes, now go away")
    
        }
    }

enum ManagerType {
    case Nice, Regular, Bad
}

}
