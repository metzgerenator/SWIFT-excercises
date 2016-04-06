//
//  main.swift
//  MonsterTown
//
//  Created by Michael Metzger  on 4/6/16.
//  Copyright © 2016 Michael Metzger . All rights reserved.
//

import Foundation


var myTown = Town()
myTown.changePopulation(500)
myTown.printTownDescritpion()

let gm = Monster()
gm.town = myTown
gm.terrorizeTown()

