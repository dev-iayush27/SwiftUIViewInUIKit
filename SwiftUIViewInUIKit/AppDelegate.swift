//
//  AppDelegate.swift
//  SwiftUIViewInUIKit
//
//  Created by Ayush Gupta on 24/11/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        let vc = ViewController()
        let rootVC = UINavigationController(rootViewController: vc)
        rootVC.isNavigationBarHidden = false
        rootVC.navigationBar.prefersLargeTitles = true
        self.window?.rootViewController = rootVC
        self.window?.makeKeyAndVisible()
        
        return true
    }
}
