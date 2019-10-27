//
//  AppDelegate.swift
//  APP2
//
//  Created by Shamim Dehghani on 8/17/18.
//  Copyright © 2018 Shamim Dehghani. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var CenterContainer: MMDrawerController?
   

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
      // NAvigator for slide right and left
        var rootViewController = self.window!.rootViewController
        
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
    
        let centerViewController = mainStoryboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        
        let leftViewController = mainStoryboard.instantiateViewController(withIdentifier: "LeftSideViewController") as! LeftSideViewController
        
        let rightViewController = mainStoryboard.instantiateViewController(withIdentifier: "RightSideViewController") as! RightSideViewController
        
        var leftSideNav_ = UINavigationController(rootViewController: leftViewController)
        var centerNav_ = UINavigationController(rootViewController: centerViewController)
        var rightNav_ = UINavigationController(rootViewController: rightViewController)
        
        
        CenterContainer = MMDrawerController(center:centerNav_, leftDrawerViewController:leftSideNav_, rightDrawerViewController:rightNav_)
        
        
        
        CenterContainer!.openDrawerGestureModeMask = MMOpenDrawerGestureMode.panningCenterView;
        CenterContainer!.closeDrawerGestureModeMask = MMCloseDrawerGestureMode.panningCenterView;
        
        window!.rootViewController = CenterContainer
        window!.makeKeyAndVisible()
        
        // Back Button
       // let navigationController = mainStoryboard.instantiateViewController(withIdentifier:"NavigationController") as! UINavigationController
       // let viewController = mainStoryboard.instantiateViewController(withIdentifier: "ParentViewController") as! ParentViewContoroller
       // navigationController.pushViewController(ViewController, animated: true)
        
       // UINavigationController?.popViewController(animated: true)
       // dismiss(animated: true, completion: nil)
       //end of Back Button
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

