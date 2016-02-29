//
//  ItemStore.swift
//  Homepwner



import UIKit

class ItemStore {
    var allItems = [NSArray]()
    var moreThanFifty = [Item]()
    var lessThanFifty = [Item]()
    
    
    init() {
        for _ in 0..<5 {
            createItem()
        }
    }
    
    
    func createItem(){
        let newItem = Item(random: true)
        
        if (newItem.valueInDollars > 50){
            moreThanFifty.append(newItem)
        }else{
            lessThanFifty.append(newItem)
        }
        allItems.append(moreThanFifty)
        allItems.append(lessThanFifty)
        

//        allItems.append(newItem)

        
    }
}
