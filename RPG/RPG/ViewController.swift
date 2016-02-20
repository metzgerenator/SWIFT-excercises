//
//  ViewController.swift
//  RPG
//

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
    var chestMessage: String?
    
    
    
    
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
        
        enemyImg.hidden = false
        
    }
  
    @IBAction func onChestTapped(sender: AnyObject) {
        chetBtn.hidden = true
        printLbl.text = chestMessage
        NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: "generateRandomEnemy", userInfo: nil, repeats: false)
        
        
    }


    @IBAction func attackTapped(sender: AnyObject) {
        
        if enemy.attemptAttack(player.attackPwr) {
            printLbl.text = "Attacked \(enemy.type) for \(player.attackPwr) HP "
            enemyHPLbl.text = "\(enemy.hp)HP"
        } else {
            printLbl.text = "Attack was unsuccessful!"
          }
        
        
        if let loot = enemy.dropLoot() {
            player.addItemToInventory(loot)
            
            chestMessage = "\(player.name) found \(loot)"
            chetBtn.hidden = false
      
        }
        
        
        if !enemy.isAlive {
            enemyHPLbl.text = ""
            printLbl.text = "Killed \(enemy.type)"
            enemyImg.hidden = true
        }
        
        
    }
}

