//
//  Town.swift
//  MonsterTown
//
//  Created by Michael Metzger  on 4/6/16.
//  Copyright © 2016 Michael Metzger . All rights reserved.
//

import Foundation

struct Town {
    var population = 5422
    var numberOfStoplights = 4
    
    func printTownDescritpion()  {
        print("population: \(population); number of stoplights: \(numberOfStoplights)")
    }
    
    mutating func changePopulation(amount:Int) {
        population += amount 
    }
    
}
