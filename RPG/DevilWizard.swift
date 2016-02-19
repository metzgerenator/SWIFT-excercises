//
//  DevilWizard.swift
//  RPG
//
//  Created by Aileen Taboy on 2/18/16.
//  Copyright © 2016 Mike. All rights reserved.
//

import Foundation

class DevilWizard: Enemy {
    override var loot: [String]{
        return ["Magic Wand", "Dark Amulet", "Salted Pork"]
    }
    
    override var type: String {
        return "Devil Wizard"
    }
}
