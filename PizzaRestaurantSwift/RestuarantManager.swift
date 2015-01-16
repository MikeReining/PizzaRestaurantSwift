//
//  RestuarantManager.swift
//  PizzaRestaurantSwift
//
//  Created by Michael Reining on 1/16/15.
//  Copyright (c) 2015 Mike Reining. All rights reserved.
//

import Foundation

protocol RestaurantManager {
    
    func kitchenOrder(kitchen: Kitchen, shouldMakePizzaOfSize: Pizza, withToppings: [Topping])
    
    func kitchenShouldUpgradeOrder(kitchen: Kitchen) -> Bool
    
    func kitchenDidMakePizza(kitchen: Kitchen) -> Bool?
    
}

//(BOOL)kitchen:(PizzaKitchen *)kitchen shouldMakePizzaOfSize:(Size)size toppings:(NSArray *)toppings;
//(BOOL)kitchenShouldUpgradeOrder:(PizzaKitchen *)kitchen;
//(void)kitchenDidMakePizza:(Pizza *)pizza; (make this method optional)