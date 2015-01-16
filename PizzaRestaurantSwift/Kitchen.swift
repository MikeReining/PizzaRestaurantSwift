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

//    func makePizza() -> Pizza? {
//        pepperoniToppings()
//        var pizza = Pizza(size: .Small, toppings: pepperoniToppings())
//        println("new make pizza method")
//        return pizza
//    }
    
    
    
    func pepperoniToppings() -> [Topping] {
        var peperoni = Topping(name: "Pepperoni")
        var cheese = Topping(name: "Cheese")
        var toppings = [peperoni,cheese]
        return toppings
    }
    
    
    func makePepperoniPizza() -> Pizza? {
        pepperoniToppings()
        
        var pizza = Pizza(size: .Small, toppings: pepperoniToppings())
        if let kd = kitchenDelegate {
            
            let shouldMake: Bool = kd.kitchenOrder(self, shouldMakePizzaOfSize: pizza, withToppings: pepperoniToppings())

            if !shouldMake {
                return nil
            }
         
            if kd.kitchenShouldUpgradeOrder(self) {
                pizza.size = .Large
            }
        }

        if let kd = kitchenDelegate {
            kd.kitchenDidMakePizza(self)
            println("Here is your \(pizza.size.printName()) Pepperoni Pizza")
            return pizza
        }
        return nil
    }
    
    func makeAnchoviesPizza() -> Pizza? {
        var anchovies = Topping(name: "anchovies")
        var cheese = Topping(name: "cheese")
        var toppings = [anchovies,cheese]
        var pizza = Pizza(size: .Small, toppings: toppings)
        if let kd = kitchenDelegate {

            let shouldMake = kd.kitchenOrder(self, shouldMakePizzaOfSize: pizza, withToppings: toppings)
            
            if !shouldMake {
            }
            
            if kd.kitchenShouldUpgradeOrder(self) {
                
            }
        }
        
        if let kd = kitchenDelegate {
            kd.kitchenDidMakePizza(self)
            return pizza
        }
        return nil
    }
    
    

    
}