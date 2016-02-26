//
//  NerdTwo.swift
//  WorldTrotter
//

//

import UIKit
import WebKit


class NerdTwo: UIViewController {
    var webView = WKWebView!()
    
    override func loadView() {
        view = webView
        
         let url = NSURL(string: "https://www.bignerdranch.com/")
        let request = NSURLRequest(URL: url!)
        webView.loadRequest(request)
    }
    
    
}

