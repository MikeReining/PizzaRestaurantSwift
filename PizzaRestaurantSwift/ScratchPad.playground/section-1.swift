// Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

//class DeliveryService {
//    var name: String
//    var pizzasDelivered: [Pizza]?
//    var pizzasDeliveredCounter: Int = 0
//    init(name: String) {
//        self.name = name
//    }
//    
//    func deliverPizza (pizza: Pizza) {
//        pizzasDeliveredCounter += 1
//        println("Total pizzas delivered: \(pizzasDeliveredCounter)")
//    }
//    
//    func printAllPizzasDelivered () {
//        for index in pizzasDelivered {
//            println("Pizza")
//        }
//    }
//}

class Topping {
    var name: String
    init(name: String) {
        self.name = name
    }
}

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

var pizzasDelivered = [Pizza]()
var pizza1 = Pizza(size: .Small, toppings: <#[Topping]#>)
