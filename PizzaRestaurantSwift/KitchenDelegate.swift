//
//  KitchenDelegate.swift
//  PizzaRestaurantSwift
//
//  Created by Michael Reining on 1/16/15.
//  Copyright (c) 2015 Mike Reining. All rights reserved.
//

import Foundation

protocol KitchenDelegate {
    
    func kitchenOrder(kitchen: Kitchen, shouldMakePizzaOfSize: Pizza, withToppings: [Topping]) -> Bool
    
    func kitchenShouldUpgradeOrder(kitchen: Kitchen) -> Bool
    
    func kitchenDidMakePizza(kitchen: Kitchen)
    
}

