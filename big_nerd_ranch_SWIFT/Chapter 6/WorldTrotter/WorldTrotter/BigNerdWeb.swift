//
//  BigNerdWeb.swift
//  WorldTrotter
//
//  Created by Aileen Taboy on 2/24/16.
//  Copyright © 2016 Mike. All rights reserved.
//

import UIKit
import WebKit


class BigNerdWebController: UIViewController  {
    
    @IBOutlet weak var webView: UIWebView!
    let url = NSURL(string: "https://www.bignerdranch.com/")
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        let request = NSURLRequest(URL: url!)
        webView.loadRequest(request)
    }
    
    
    
}

