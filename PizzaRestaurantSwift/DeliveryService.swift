//
//  DeliveryService.swift
//  PizzaRestaurantSwift
//
//  Created by Michael Reining on 1/17/15.
//  Copyright (c) 2015 Mike Reining. All rights reserved.
//

import Foundation

class DeliveryService {
    var name: String
    var pizzasDelivered: [Pizza]?
    var deliveryCar = DeliveryCar(carID: 1)
    var pizzasDeliveredCounter: Int = 0
    init(name: String) {
        self.name = name
    }
    
    func deliverPizza (pizza: Pizza) {
        deliveryCar.deliverPizza(pizza)
        pizzasDeliveredCounter += 1
        if pizzasDelivered == nil {
            pizzasDelivered = [Pizza]()
        }
        pizzasDelivered?.append(pizza)
        println("Total pizzas delivered: \(pizzasDeliveredCounter)")
    }
    
    func printAllPizzasDelivered() {
        println("")
        println("----------------------------------")
        println("PRINT PIZZAS DELIVERED - LIST ALL")
        var pizzaNumber = 1
        if let pizzaArray = pizzasDelivered {
            for pizza in pizzaArray {
                var toppings = ""
                for topping in pizza.toppings {
                    if toppings == "" {
                        toppings = topping.name
                    } else {
                        toppings = toppings + " " + topping.name
                    }
                }
                println("Pizza \(pizzaNumber) size: \(pizza.size.printName()) with toppings: \(toppings)")
                pizzaNumber += 1
            }
        }
    }
}

