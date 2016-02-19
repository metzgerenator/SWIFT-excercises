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
        // Do any additional setup after loading the view, typically from a nib.
    }

  
    @IBAction func onChestTapped(sender: AnyObject) {
    }


}

