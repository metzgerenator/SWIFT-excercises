//
//  Kimara.swift
//  RPG
//
//  Created by Aileen Taboy on 2/17/16.
//  Copyright © 2016 Mike. All rights reserved.
//

import Foundation



class Kimara: Enemy {
    let IMMUNE_MAX = 15
    
    
    override var loot: [String ]{
        return ["tough Hide", "kimara Venom","Rare Trident"]
    }
    
    override var type: String {
        return "Kimara"
       }
    
    override func attemptAttack(attackPwr: Int) -> Bool {
        if attackPwr >= IMMUNE_MAX {
            return super.attemptAttack(attackPwr)
        } else {
            return false  
        }
    }
    
}