//
//  main.swift
//  PizzaRestaurantSwift
//
//  Created by Michael Reining on 1/15/15.
//  Copyright (c) 2015 Mike Reining. All rights reserved.
//

import Foundation

var myAwesomeKitchen = Kitchen(name: "myAwesomeKitchen")

var manager = Manager()

// Setup Kitchen Delegate at run time

myAwesomeKitchen.kitchenDelegate = manager

myAwesomeKitchen.makePepperoniPizza()
myAwesomeKitchen.makeAnchoviesPizza()

var badManager = BadManager()

myAwesomeKitchen.kitchenDelegate = badManager

myAwesomeKitchen.makeAnchoviesPizza()

var niceManager = NiceManager()
myAwesomeKitchen.kitchenDelegate = niceManager
myAwesomeKitchen.makeAnchoviesPizza()