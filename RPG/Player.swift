//
//  Player.swift
//  RPG
//
//  Created by Aileen Taboy on 2/17/16.
//  Copyright © 2016 Mike. All rights reserved.
//

import Foundation

class Player: Character {
    private var _name = "Player"
    
    
    var name: String {
        get{
            return _name
        }
    }
    
    
    
    private var _inventory = [String]()
    
    var inventory: [String] {
        return _inventory
    }
    
    
    func addItemToInventory(item: String) {
        _inventory.append(item)
    }
    
    convenience init(name: String, hp: Int, attackPwr: Int){
        self.init(startingHP: hp, attackPwr: attackPwr)
        
        _name = name
    }
}
