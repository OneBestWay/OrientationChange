//
//  NavigationTopViewController.swift
//  OrentationChange
//
//  Created by GK on 16/7/24.
//  Copyright © 2016年 GK. All rights reserved.
//

import UIKit

class NavigationTopViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func onlySupportLandscape(_ sender: AnyObject) {
        
        
        
        //performSegue(withIdentifier: "navlandscape", sender: nil)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
       
        if segue.identifier == "navlandscape" {
            let appDelegate = UIApplication.shared().delegate as! AppDelegate
            appDelegate.isShouldRotate = true
        }
    }

    override func prefersStatusBarHidden() -> Bool {
        return false
    }
    
    override func shouldAutorotate() -> Bool {
        return false
    }
    
    //设定该View Controller支持的方向，这里只支持竖屏
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        
        return UIInterfaceOrientationMask.portrait
    }
    override func preferredInterfaceOrientationForPresentation() -> UIInterfaceOrientation {
        return UIInterfaceOrientation.portrait
    }


}
