//
//  Website.swift
//  TelemetryApp
//
//  Created by Jeff Ahlers on 11/7/19.
//  Copyright © 2019 Jeff Ahlers. All rights reserved.
//

import UIKit
import WebKit

class WebsiteController: UIViewController, WKNavigationDelegate{
    
    @IBOutlet weak var website: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        website.navigationDelegate = self
        self.showSpinner(onView: self.website)
        let urlString = "https://sae.wustl.edu/login.html"
        let url = URL(string: urlString)!
        let urlRequest = URLRequest(url: url)
        website.load(urlRequest)
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        self.removeSpinner()
    }
}
