//
//  NiceManager.swift
//  PizzaRestaurantSwift
//
//  Created by Michael Reining on 1/16/15.
//  Copyright (c) 2015 Mike Reining. All rights reserved.
//

import Foundation

class NiceManager: KitchenDelegate {
    
    // The Kitchen Manager conforms to the KitchenDelegate
    
    func kitchenOrder(kitchen: Kitchen, shouldMakePizzaOfSize: Pizza, withToppings: [Topping]) -> Bool {

        
        return true
    }
    
    func kitchenShouldUpgradeOrder(kitchen: Kitchen) -> Bool {
        println("Nice manager says: You get large pizza's for free")

        return true
    }
    
    func kitchenDidMakePizza(kitchen: Kitchen) {
        
    }
}