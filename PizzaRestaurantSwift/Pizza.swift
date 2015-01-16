//
//  Pizza.swift
//  PizzaRestaurantSwift
//
//  Created by Michael Reining on 1/16/15.
//  Copyright (c) 2015 Mike Reining. All rights reserved.
//

import Foundation

class Pizza {
    var size: PizzaSize
    var toppings: [Topping]
    init (size: PizzaSize, toppings: [Topping]) {
        self.size = size
        self.toppings = toppings
    }
}

enum PizzaSize {
    case Small, Medium, Large
    func printName() -> String {
        switch self {
        case .Small:
            return "small"
        case .Medium:
            return "medium"
        case .Large:
            return "large"
        default:
            return "Invalid Size"
        }
    }
}