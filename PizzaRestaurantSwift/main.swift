//
//  main.swift
//  PizzaRestaurantSwift
//
//  Created by Michael Reining on 1/15/15.
//  Copyright (c) 2015 Mike Reining. All rights reserved.
//

import Foundation


// Setup Kitchen
var myAwesomeKitchen = Kitchen(name: "myAwesomeKitchen")

// Add Toppings
var cheese = Topping(name: "cheese")
var pepperoni = Topping(name: "pepperoni")
var anchovies = Topping(name: "anchovies")



// Examples with Regular Manager

println("------------")
println("GOOD MANAGER")

// Setup Kitchen Delegate at run time

var regularManager = Manager(managerType: .Regular)
myAwesomeKitchen.kitchenDelegate = regularManager
myAwesomeKitchen.makePizza(Pizza(size: .Small, toppings: [cheese,pepperoni]))
println("")

// Example with BAD Manager pepperoni pizza

println("------------")
println("BAD MANAGER: Pepperoni Pizza")

var badManager = Manager(managerType: .Bad)
myAwesomeKitchen.kitchenDelegate = badManager
myAwesomeKitchen.makePizza(Pizza(size: .Small, toppings: [cheese,pepperoni]))
println("")

// Example with BAD Manager anchovies pizza

println("------------")
println("BAD MANAGER: Anchovies Pizza")

myAwesomeKitchen.makePizza(Pizza(size: .Small, toppings: [cheese,anchovies]))
println("")


// Example with NICE Manager


println("------------")
println("NICE MANAGER")

var niceManager = Manager(managerType: .Nice)
myAwesomeKitchen.kitchenDelegate = niceManager
myAwesomeKitchen.makePizza(Pizza(size: .Small, toppings: [cheese,pepperoni]))
println("")

println("------------")
println("NICE MANAGER ANCHOVIES")
myAwesomeKitchen.makePizza(Pizza(size: .Small, toppings: [cheese,anchovies]))
