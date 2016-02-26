//
//  NerdTwo.swift
//  WorldTrotter
//

//

import UIKit
import WebKit


class NerdTwo: UIViewController {
    
    //WKNavigationDelegate
    var webView = WKWebView?()
    
    override func loadView() {
        
        webView = WKWebView()
        
        view = webView
//        let configuration = WKWebViewConfiguration()
//        
//        self.webView = WKWebView(frame: self.view.bounds, configuration: configuration)
        
        
        
        print("loading web view")
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = NSURL(string: "https://www.bignerdranch.com/")
        let request = NSURLRequest(URL: url!)
        print(request)
        webView!.loadRequest(request)
        
        print("calling view did load")
        
    }
    
    
}

