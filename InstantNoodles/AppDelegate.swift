//
//  AppDelegate.swift
//  InstantNoodles
//
//  Created by apple on 2020/7/31.
//  Copyright © 2020 qiao. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        self.window = UIWindow.init(frame: UIScreen.main.bounds)
        self.window?.backgroundColor = .white
        
        self.window?.rootViewController = INLoginViewController()
        self.window?.makeKeyAndVisible()
        
        return true
    }
    


}

