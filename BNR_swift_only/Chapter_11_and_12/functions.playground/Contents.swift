//: Playground - noun: a place where people can play

import Cocoa
import Foundation


var str = "Hello, playground"


func printGreeting() {
    print("Hello, playground.")
}

printGreeting()

func printPersonalGreetings(names: String...) {
    
    for name in names {
        print("Hello \(name), welcome to the playground.")
    }
    
}
printPersonalGreetings("Alex", "Chris", "Drew", "Pat")




func divisionDescription(forNumerator num: Double, andDenominator den: Double, withPunctuation punctuation: String = ".") ->String {
    return "\(num) divided by \(den) equals \(num / den)\(punctuation)"
}

print(divisionDescription(forNumerator: 9.0, andDenominator: 3.0, withPunctuation: "!"))






var error = "The request failed:"

func appendErrorCode(code: Int, inout toErrorString errorString: String){
    if code == 400 {
        errorString += "bad request."
    }
    
    
}


appendErrorCode(400, toErrorString: &error)





func areaOfTriangle(withBase base: Double, andHeight height: Double) -> Double {
    let numerator = base * height
    func divide() -> Double {
        return numerator / 2
    }
    return divide()
}

areaOfTriangle(withBase: 3.0, andHeight: 5.0)


func sortEvenOdd(numbers: [Int]) -> (evens: [Int], odds: [Int]){
    var evens = [Int]()
    var odds = [Int]()
    for number in numbers {
        if number % 2 == 0 {
            evens.append(number)
        } else {
            odds.append(number)
            
        }
    }
    return (evens, odds)
}


let aBunchofNumbers = [10, 1, 4, 3, 57, 43, 84, 27,156, 111]
let theSoretedNumbers = sortEvenOdd(aBunchofNumbers)

print("The even number are: \(theSoretedNumbers.evens); the odd numbers are: \(theSoretedNumbers.odds)")



func grabMiddleName(name: (String, String?, String)) ->String? {
    return name.1
}


let middleName = grabMiddleName(("Matt", "Bob", "Mathias"))
if let theName = middleName {
    print(theName)
}



func greetByMiddleName(name: (first: String, middle: String?, last: String)) {
    
  
    guard let middleName = name.middle where middleName.characters.count == 4 else {
        
        print("Hey there!")
        return
    }
    print("Hey \(middleName)")
}

greetByMiddleName(("Matt", "Danger", "Mathias"))



//Silver Challange

let myList = ["black beans", "green beans", "musrooms", ]
func beanSifter(groceryList: [String])-> (beans:[String], noBeans: [String]) {
    var beans = [String]()
    var noBeans = [String]()
    
    
    for item in groceryList {
        
        if  item.hasSuffix("beans") == true {
            beans.append(item)
            
        } else {
            
            
            if item.hasSuffix("beans") == false {
                noBeans.append(item)
            }
        }
        
    }
    
    
    return (beans, noBeans)
    
}


let MyListBeans = beanSifter(myList)
MyListBeans.beans
MyListBeans.noBeans

























