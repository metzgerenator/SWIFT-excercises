//: Playground - noun: a place where people can play

import UIKit




extension String{
    
    
    func stringAdder(number: Int) -> Int {
        var intToReturn: Int
        
        if (Int(self) != nil) {
            
          intToReturn = Int(self)! + number
            
        }else {
            intToReturn = 0
        }
        
     return  intToReturn
    }


}


"5".stringAdder(5)

"test".stringAdder(5)

//Challange 2


protocol PrettyPrintable {
    var prettyDescription: String { get }
}

struct User {
    let name: String
    let ID: Int
}




extension User: PrettyPrintable {
    
    
    
    var prettyDescription: String {
      
        
        return "new string\(self.prettyDescription)"
    }
    
}


