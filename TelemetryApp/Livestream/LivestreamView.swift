//
//  LivestreamView.swift
//  TelemetryApp
//
//  Created by Jeff Ahlers on 11/4/19.
//  Copyright © 2019 Jeff Ahlers. All rights reserved.
//

import UIKit
import WebKit

class LivestreamView: UIViewController, TelemetryDelegate, UIScrollViewDelegate{
    
    @IBOutlet weak var livestream: WKWebView!
    
    override func viewWillAppear(_ animated: Bool) {
        Telemetry.shared.delegate = self
        livestream.scrollView.isScrollEnabled=false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Using pokemon as placeholder for now
        //I have absolutely no fucking idea why the 1.17 factor works but it does
        let iframe = "<iframe src=\"https://player.twitch.tv/?channel=twitchplayspokemon\" frameborder=\"0\" allowfullscreen=\"true\" scrolling=\"no\" height=\"\(livestream.frame.height*UIScreen.main.scale)\" width=\"\(livestream.frame.width*UIScreen.main.scale*1.1)\"></iframe>"
        livestream.loadHTMLString(iframe, baseURL: nil)
        livestream.scrollView.backgroundColor = UIColor.black
    }
    
    func manageMessage(_ event: SensorReading) {
    }
    func manageOpen() {
    }
    func manageComplete() {
    }
}
