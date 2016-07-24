//
//  LandscapeViewController.swift
//  OrentationChange
//
//  Created by GK on 16/7/24.
//  Copyright © 2016年 GK. All rights reserved.
//

import UIKit

class LandscapeViewController: UIViewController {

    let width = UIScreen.main().bounds.size.width
    let height = UIScreen.main().bounds.size.height
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        let value = UIInterfaceOrientation.landscapeRight.rawValue
//        UIDevice.current().setValue(value, forKey: "orientation")
        
    }
    
    //ios9以后要旋转中保留status bar必须设置该方法返回false
    override func prefersStatusBarHidden() -> Bool {
        return false
    }
    
    override func shouldAutorotate() -> Bool {
        return false
    }
    
    //设定该View Controller支持的方向，这里只支持竖屏
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        
        return UIInterfaceOrientationMask.landscapeRight
    }

    override func preferredInterfaceOrientationForPresentation() -> UIInterfaceOrientation {
        return UIInterfaceOrientation.landscapeRight
    }


  }
