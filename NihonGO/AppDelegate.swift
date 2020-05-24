//
//  AppDelegate.swift
//  NihonGO
//
//  Created by Tong Minh Nguyet on 4/27/20.
//  Copyright © 2020 Tong Minh Nguyet. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let home = HomeAppViewController()
        let navi = UINavigationController(rootViewController: home)
        setRootController(vc: navi)
        
        print(#function)
        // Override point for customization after application launch.
        return true
    }
    
    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        return .portrait
    }
    
    func setRootController(vc: UIViewController) {
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
    }
}

