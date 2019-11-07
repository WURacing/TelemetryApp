//
//  DockManager.swift
//  TelemetryApp
//
//  Created by Jeff Ahlers on 11/7/19.
//  Copyright © 2019 Jeff Ahlers. All rights reserved.
//

import UIKit
class DockManager: UIView, TelemetryDelegate{
    
    var currentView:DockView = DockMinimizedView()
    func expandDock(){
        currentView.removeFromSuperview()
        currentView = DockExpandedView()
        setUp(currentView)
    }
    func minimizeDock(){
        currentView.removeFromSuperview()
        currentView = DockMinimizedView()
        setUp(currentView)
    }
    
    func manageMessage(key: String, dataPoint: DataPoint) {
        currentView.manageMessage(key: key, dataPoint: dataPoint)
    }
    func manageOpen() {
        currentView.manageOpen()
    }
    func manageComplete() {
        currentView.manageComplete()
    }
}


