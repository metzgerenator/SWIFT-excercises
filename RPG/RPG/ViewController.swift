//
//  ViewController.swift
//  RPG
//
//  Created by Aileen Taboy on 2/17/16.
//  Copyright © 2016 Mike. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var printLbl: UILabel!
    
    
    @IBOutlet weak var playerHPLbl: UILabel!
    
    @IBOutlet weak var enemyHPLbl: UILabel!
    
    @IBOutlet weak var enemyImg: UIImageView!
    
    @IBOutlet weak var chetBtn: UIButton!
    
    var player: Player!
    var enemy: Enemy!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player(name: "Mike", hp: 110, attackPwr: 20)
        generateRandomEnemy()   
        
        playerHPLbl.text = "\(player.hp) HP"
        
    }

    
    func generateRandomEnemy(){
        let rand = Int(arc4random_uniform(2))
        
        if rand == 0{
            enemy = Kimara(startingHP: 50, attackPwr: 12)
        } else {
            enemy  = DevilWizard(startingHP: 60, attackPwr: 15)
        }
        
        
    }
  
    @IBAction func onChestTapped(sender: AnyObject) {
    }


}

