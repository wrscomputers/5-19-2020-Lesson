import UIKit

enum RoastLevel: String {
    case light = "Light"
    case medium = "Medium"
    case dark = "Dark"
}

let roastLevel: RoastLevel = .light

print(roastLevel.rawValue)

struct Coffee {
    let name: String
    let region: String
}

let violetsCoffee = Coffee(name: "White Chocolate Mocha", region: "Ethiopia")


print(violetsCoffee.name)

class CoffeeShop {
    let name: String
    let address: String
    var coffees: [Coffee]
    
    
    init(name: String, address: String, coffee: [Coffee]) {
        self.name = name
        self.address = address
        self.coffees = coffee
    }
    
    func orderMoreCoffee() {
        for coffee in coffees {
            print("I need to order more \(coffee.name), please!")
        }
    }
}
    
    let myCoffeeShop = CoffeeShop(name: "Spencer's Coffee", address: "123 Main St.", coffee: [violetsCoffee])
    
    let mikesCoffeeShop = CoffeeShop(name: "Mike's Coffee", address: "321 Center St", coffee: [violetsCoffee])
    
    myCoffeeShop.orderMoreCoffee()


//Optionals - Something that is allowed to be nil

let firstName: String = "Spencer"
let middleName: String?

let myNumber = Int("97")

print(myNumber!)


func double (number: Int) -> Int {
    return number * 2
}

double(number: myNumber!)

if let unwrappedNumber = myNumber {
    double(number: unwrappedNumber)
}
              
