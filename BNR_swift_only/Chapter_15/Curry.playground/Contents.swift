//: Playground - noun: a place where people can play

import UIKit


func greetName(name: String, withGreeting greeting: String) ->String {
    return "\(greeting)\(name)"
}



let personalGreeting = greetName("Matt", withGreeting: "Hello,")
print(personalGreeting)

func greetingForName(name: String) -> (String) -> String {
    func greeting(greeting: String) -> String {
        return "\(greeting) \(name)"
    }
    
    return greeting
}



let greeterFunction = greetingForName("Matt")
let theGreeting = greeterFunction("Hello,")
print(theGreeting)