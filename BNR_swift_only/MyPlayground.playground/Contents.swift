//: Playground - noun: a place where people can play

import Cocoa

var statusCode: Int  = 418
var errorString: String = "The request failed with the error:"

switch statusCode {
case 100, 101:
//    errorString += "informational, 1xx."
    errorString += "Informational, \(statusCode)"
case 204:
    errorString += "Succesful but no content, 204"
    
case 300...307:
    errorString += "Redirection, \(statusCode)"
    
    
case 400...417:
    errorString += "Client error , \(statusCode)"
    
case 500...505:
    errorString += "Server error , \(statusCode)"
    
    
    case let unknownCode where (unknownCode >= 200 && unknownCode < 300)
        || unknownCode > 505:
    errorString = "\(unknownCode) is not a known error code."
    
default:
    errorString = "Unexpected error encountered"
  }

let error = (code: statusCode, error: errorString)
error.code
error.error


let firstErrorCode = 404
let secondErrorCode = 200
let errorCodes = (firstErrorCode, secondErrorCode)

switch errorCodes {
case (404, 404):
    print("No items found.")
case(404, _):
    print("First item not found.")
case(_, 404):
    print("Second itm not found.")
default:
    print("All items found.")
}





for case let i in 1...100 where i % 3 == 0 {
    print(i)
}

// Chapter 6
//
//var shileds = 5
//var blastersOverheating = false
//var blasterFireCount = 0
//var spaceDemonsDestoryed = 0
//while shileds > 0 {
//    
//    if spaceDemonsDestoryed == 500 {
//        print("you beat the game!")
//        break
//    }
//    
//    
//    
//    if blastersOverheating {
//        print("Blasters are overheated! Cooldown")
//        sleep(5)
//        print("Blasters ready to fire")
//        sleep(1)
//        blastersOverheating = false
//        blasterFireCount = 0
//        
//    
//    }
//    
//    if blasterFireCount > 100 {
//        blastersOverheating = true
//        continue
//    }
//    
//    //Fire blasters!  
//    print("Fire blasters!")
//    
//    ++blasterFireCount
//    ++spaceDemonsDestoryed
//    
//    
//}





















