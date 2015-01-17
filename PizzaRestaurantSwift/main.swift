//
//  main.swift
//  PizzaRestaurantSwift
//
//  Created by Michael Reining on 1/15/15.
//  Copyright (c) 2015 Mike Reining. All rights reserved.
//

import Foundation


// Setup Kitchen and Delivery Service
var kitchen = Kitchen(name: "Awesome Kitchen")
var deliveryService = DeliveryService(name: "Awesome Delivery Service")

// Add Toppings
var cheese = Topping(name: "cheese")
var pepperoni = Topping(name: "pepperoni")
var anchovies = Topping(name: "anchovies")



// Examples with Regular Manager

println("------------")
println("GOOD MANAGER")

// Setup Kitchen Delegate at run time

var regularManager = Manager(managerType: .Regular, deliveryService: deliveryService)
kitchen.kitchenDelegate = regularManager
kitchen.makePizza(Pizza(size: .Small, toppings: [cheese,pepperoni]))
println("")

// Example with BAD Manager pepperoni pizza

println("------------")
println("BAD MANAGER: Pepperoni Pizza")

var badManager = Manager(managerType: .Bad, deliveryService: deliveryService)
kitchen.kitchenDelegate = badManager
kitchen.makePizza(Pizza(size: .Small, toppings: [cheese,pepperoni]))
println("")

// Example with BAD Manager anchovies pizza

println("------------")
println("BAD MANAGER: Anchovies Pizza")

kitchen.makePizza(Pizza(size: .Small, toppings: [cheese,anchovies]))
println("")


// Example with NICE Manager


println("------------")
println("NICE MANAGER")

var niceManager = Manager(managerType: .Nice, deliveryService: deliveryService)
kitchen.kitchenDelegate = niceManager
kitchen.makePizza(Pizza(size: .Small, toppings: [cheese,pepperoni]))
println("")

println("------------")
println("NICE MANAGER ANCHOVIES")
kitchen.makePizza(Pizza(size: .Small, toppings: [cheese,anchovies]))

deliveryService.printAllPizzasDelivered()
