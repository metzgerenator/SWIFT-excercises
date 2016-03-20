//: Playground - noun: a place where people can play

import Cocoa

var groceryBag: Set = ["Apples", "Oranges", "Pineapple"]


for food in groceryBag {
    print(food)
}

let hasBananas = groceryBag.contains("Bannas")

let friendsGroceryBag = Set(["Bannas", "Cereal", "Milk", "Oranges"])

let commonGroceryBag = groceryBag.union(friendsGroceryBag)

let roomatesGroceryBag = Set(["Apples", "Bannas", "Cereal", "Toothpaste"])

let itemsToReturn = commonGroceryBag.intersect(roomatesGroceryBag)


let yourSecondBag = Set(["Berries", "Yogurt"])

let roomatesSecondBag = Set(["Grapes", "Honey"])

let disjoint = yourSecondBag.isDisjointWith(roomatesSecondBag)





//Bronze challange 
let myCities = Set(["Atlanta", "Chicago", "Jacksonville", "New York", "San Francisco"])

let yourCities = Set(["Chicago", "San Francisco", "Jacksonville"])

let citycheck = myCities.isSupersetOf(yourCities)




//Silver Challange 


let friendsGroceryBag1 = Set(["Bannas", "Cereal", "Milk", "Oranges"])


var roomatesGroceryBag1 = Set(["Apples", "Bannas", "Cereal", "Toothpaste"])


for element in friendsGroceryBag1 {
    
    roomatesGroceryBag1.insert(element)
}

print(roomatesGroceryBag1)



