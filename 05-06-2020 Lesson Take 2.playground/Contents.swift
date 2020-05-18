//enum - Enumeration

enum AppleProducts: String {
    case iPhone
    case iPad
    case MacBook
    case Watch
    case iMac
    case iMacPro
    
}

enum PizzaCategory: String {
    case classic
    case specialty
    case glutenFree
}

let specialtyPizza = PizzaCategory.specialty
let myFavoritePizza: PizzaCategory = .classic

print(myFavoritePizza)

struct Pizza {
    let name: String
    let cost: Double
    let category: PizzaCategory
}

let myPizza = Pizza(name: "49-er", cost: 12.99, category: .classic)

print("I would like to order a \(myPizza.name)")


