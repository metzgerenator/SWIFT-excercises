//
//  Monster.swift
//  MonsterTown
//
//  Created by Michael Metzger  on 4/6/16.
//  Copyright © 2016 Michael Metzger . All rights reserved.
//

import Foundation


class Monster {
    var town: Town?
    var name = "Monster"

    func terrorizeTown(){
        if town != nil {
            print("\(name) is terrorizing a town!")
        } else {
            print("\(name) hasn't found a town to terrorize yet..")
        }
    }
    
    
}