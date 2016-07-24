//
//  ViewController.swift
//  OrentationChange
//
//  Created by GK on 16/7/24.
//  Copyright © 2016年 GK. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var indicatorLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return false
    }
    
   
    @IBAction func backToOrigin(segue: UIStoryboardSegue) {
        
    }
}


//extension UINavigationController {
//    public override func shouldAutorotate() -> Bool {
//        return visibleViewController?.shouldAutorotate() ?? false
//    }
//    public override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
//        return visibleViewController?.supportedInterfaceOrientations() ?? UIInterfaceOrientationMask.portrait
//    }
//}
//extension UIViewController
//{
//    public class func topMostViewController() -> UIViewController? {
//        let rootViewController = UIApplication.shared().windows.first?.rootViewController
//        return self.topMostViewControllerOfViewController(viewController: rootViewController)
//    }
//    
//    class func topMostViewControllerOfViewController(viewController: UIViewController?) -> UIViewController? {
//        // UITabBarController
//        if let tabBarController = viewController as? UITabBarController,
//            let selectedViewController = tabBarController.selectedViewController {
//            return self.topMostViewControllerOfViewController(viewController: selectedViewController)
//        }
//        
//        // UINavigationController
//        if let navigationController = viewController as? UINavigationController,
//            let visibleViewController = navigationController.visibleViewController {
//            return self.topMostViewControllerOfViewController(viewController: visibleViewController)
//        }
//        
//        // presented view controller
//        if let presentedViewController = viewController?.presentedViewController {
//            return self.topMostViewControllerOfViewController(viewController: presentedViewController)
//        }
//        
//        // child view controller
//        for subview in viewController?.view?.subviews ?? [] {
//            if let childViewController = subview.next() as? UIViewController {
//                return self.topMostViewControllerOfViewController(viewController: childViewController)
//            }
//        }
//        
//        return viewController
//    }
//
//}
