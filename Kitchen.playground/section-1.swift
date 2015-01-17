// Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"




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

class Topping {
    var name: String
    init(name: String) {
        self.name = name
    }
}


class Kitchen {
    var name: String
    init (name: String) {
        self.name = name
    }

    func makeLargePepperoniPizza() -> Pizza {
        var peperoni = Topping(name: "Pepperoni")
        var cheese = Topping(name: "Cheese")
        var toppings = [peperoni,cheese]
        
        println("NEW PIZZA COMING UP")
        var pizza = Pizza(size: .Large, toppings: toppings)
        
        println("Pizza Size: \(pizza.size.printName())")
        print("Pizza Toppings: ")
        for topping in toppings {
            print("\(topping.name), ")
        }

        
        return pizza
    }
    

}

var myAwesomeKitchen = Kitchen(name: "myAwesomeKitchen")

myAwesomeKitchen.makeLargePepperoniPizza()

enum Type {
    case Nice, Regular, Bad
}

var managerType: Type = .Regular
switch managerType {
case .Nice:
    println("NICE Manager says: You can have any toppings you like")
case .Regular:
            println("REGULAR Manager says: You can have any toppings you like")
case .Bad:
            println("Bad manager says: I make no anchovie pizzas")
}

