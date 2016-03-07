//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"



var errorCodeString: String?
errorCodeString = "404"
var errorDescription: String?

if let theError = errorCodeString, errorCodeInteger = Int(theError)
    where errorCodeInteger == 404 {
        errorDescription = ("\(errorCodeInteger + 200): the requested resource was not found")
    
    
   
   
}

var upCaseErrorDesctiption = errorDescription?.uppercaseString
errorDescription