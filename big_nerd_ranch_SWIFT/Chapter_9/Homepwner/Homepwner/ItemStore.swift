//
//  ItemStore.swift
//  Homepwner



import UIKit

class ItemStore {
    var allItems = [Item]()
    
    
    
    
    
    func createItem() ->Item {
        let newItem = Item(random: true)
        
        allItems.append(newItem)

        return newItem
    }
}
