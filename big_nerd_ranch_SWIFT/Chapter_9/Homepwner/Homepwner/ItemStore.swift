//
//  ItemStore.swift
//  Homepwner



import UIKit

class ItemStore {
    var allItems = [Item]()
    
    func removeItem(item: Item) {
        if let index = allItems.indexOf(item){
            allItems.removeAtIndex(index)
        }
    }
    
    
    
    func createItem() ->Item {
        let newItem = Item(random: true)
        
        allItems.append(newItem)

        return newItem
    }
    
    
    func moveItemAtIndex(fromIndex: Int, toIndex: Int) {
        if fromIndex == toIndex {
            return
        }
        
        // Get reference to object being moved so you can reinsert it
        let movedItem = allItems[fromIndex]
        
        //Remove item from array 
        allItems.removeAtIndex(fromIndex)
        
        //Insert item in array at new location 
        allItems.insert(movedItem, atIndex: toIndex)
    }
    
    
    
    
    
    
    
}
