//
//  LandscapeNavViewController.swift
//  OrentationChange
//
//  Created by GK on 16/7/24.
//  Copyright © 2016年 GK. All rights reserved.
//

import UIKit

class LandscapeNavViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let value = UIInterfaceOrientation.landscapeRight.rawValue
        UIDevice.current().setValue(value, forKeyPath: "orientation")
        UIViewController.attemptRotationToDeviceOrientation()

    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        let appDelegate = UIApplication.shared().delegate as! AppDelegate
        appDelegate.isShouldRotate = false
    }
    
    //ios9以后要旋转中保留status bar必须设置该方法返回false
    override func prefersStatusBarHidden() -> Bool {
        return false
    }

}
