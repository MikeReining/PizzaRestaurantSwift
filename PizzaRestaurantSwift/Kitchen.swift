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
    
    func makePizza(pizza: Pizza) -> Pizza? {

        
        if let kd = kitchenDelegate {
            
            let shouldMake: Bool = kd.kitchenOrder(self, shouldMakePizzaOfSize: pizza.size, withToppings: pizza.toppings)
            
            if !shouldMake {
                println("No Pizza Today")
                return nil
            }
            
            if kd.kitchenShouldUpgradeOrder(self) {
                pizza.size = .Large
            }
        }
        
        if let kd = kitchenDelegate {
            kd.kitchenDidMakePizza(self)
            return pizza
        }
        return nil
    }
    
}