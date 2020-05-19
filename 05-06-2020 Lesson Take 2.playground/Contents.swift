//enum - Enumeration

enum AppleProducts: String {
    case iPhone
    case iPad
    case macbook
    case watch = "Apple Watch"
    case iMac
    case iMacPro
    
}

print(AppleProducts.watch.rawValue)

enum PizzaCategory: String {
    case classic
    case specialty
    case glutenFree
}

let specialtyPizza = PizzaCategory.specialty
let myFavoritePizza: PizzaCategory = .classic

print(myFavoritePizza)

//struct -- Structs

struct Pizza {
    let name: String
    let cost: Double
    let category: PizzaCategory
    
    //structs can init themselves however you can as well if needed to give more options.
    init(name: String, cost: Double, category: PizzaCategory) {
        self.name = name
        self.category = category
        self.cost = 0
    }
}

let myPizza = Pizza(name: "49-er", cost: 9.99, category: .classic)

print("I would like to order a \(myPizza.name)")


//class -- Classes

class PizzaPlace {
    var name: String
    var address: String
    private(set) var pizzas: [Pizza]
    
    //Create Initializer
    init(name: String, address: String) {
        self.name = name
        self.address = address
        self.pizzas = []
    }
    
    func add(pizza: Pizza) {
        pizzas.append(pizza)
    }

}

let johnnyPizzaPlace = PizzaPlace(name: "Johnny's Pizza", address: "123 Delicious Ave")

let hawaiianClassic = Pizza(name: "Hawaiian Classic", cost: 12.99, category: .classic)
let chickenAlfredo = Pizza(name: "Call Me Mr. Alfredo", cost: 15.99, category: .specialty)
let margarita = Pizza(name: "Margarita Seniorita" , cost: 16.99, category: .glutenFree)

johnnyPizzaPlace.add(pizza: hawaiianClassic)
johnnyPizzaPlace.add(pizza: chickenAlfredo)
johnnyPizzaPlace.add(pizza: margarita)

print(johnnyPizzaPlace.pizzas)
 
