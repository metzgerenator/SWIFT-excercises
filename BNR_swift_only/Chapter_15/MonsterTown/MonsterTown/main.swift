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
let fredTheZombie = Zombie()
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printTownDescritpion()


fredTheZombie.changeName("Fred the Zombie", walksWithLimp: false)


