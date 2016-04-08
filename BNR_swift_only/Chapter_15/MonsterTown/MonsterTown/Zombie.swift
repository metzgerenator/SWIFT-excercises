//
//  Zombie.swift
//  MonsterTown
//
//  Created by Michael Metzger  on 4/6/16.
//  Copyright © 2016 Michael Metzger . All rights reserved.
//

import Foundation
class Zombie: Monster {
    var walksWithLimp = true
    
    final override func terrorizeTown() {
        town?.changePopulation(-10)
        super.terrorizeTown()
        
    }
    
    func changeName(name: String, walksWithLimp: Bool) {
        self.name = name
        self.walksWithLimp = walksWithLimp
    }
}

