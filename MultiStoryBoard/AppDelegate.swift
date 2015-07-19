//
//  AppDelegate.swift
//  MultiStoryBoard
//
//  Created by Mohsin on 28/06/2015.
//  Copyright (c) 2015 PanaCloud. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        println("\(UIDevice.currentDevice().name)")
        println("\(UIDevice.currentDevice().systemName)")
        println("\(UIDevice.currentDevice().systemVersion)")
        println("\(UIDevice.currentDevice().model)")
        println("\(UIDevice.currentDevice().localizedModel.debugDescription)")
        println("\(UIDevice.currentDevice().userInterfaceIdiom.rawValue)")
        println("\(UIDevice.currentDevice().identifierForVendor)")
        println("\(UIDevice.currentDevice().description)")

        
        println("\(UIScreen.mainScreen().bounds.size)")
        
        

        self.setStoryboard()
        
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

    
    
    
    func setStoryboard(){
        let device = DeviceDetection.sizeToDevice(UIScreen.mainScreen().bounds.size)
        
        device.desc()
        
        println(self.window?.rootViewController)
        
        
        if DeviceDetection.sizeToDevice(UIScreen.mainScreen().bounds.size) == AppleDevices.iPhone6P{
            
            self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
            let myStoryboard = UIStoryboard(name: "6Plus", bundle: nil)
            
            let myNavigatioController = myStoryboard.instantiateInitialViewController() as! UINavigationController
            let firstVC = myStoryboard.instantiateViewControllerWithIdentifier("ViewController") as! ViewController
            
            myNavigatioController.setViewControllers([firstVC], animated: false)
            self.window?.rootViewController = myNavigatioController
            self.window?.makeKeyAndVisible()
            
        }
            
        else if DeviceDetection.sizeToDevice(UIScreen.mainScreen().bounds.size) == AppleDevices.iPhone5{
            
            self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
            let myStoryboard = UIStoryboard(name: "5S", bundle: nil)
            
            let myNavigatioController = myStoryboard.instantiateInitialViewController() as! UINavigationController
            let firstVC = myStoryboard.instantiateViewControllerWithIdentifier("ViewController") as! ViewController
            
            myNavigatioController.setViewControllers([firstVC], animated: false)
            self.window?.rootViewController = myNavigatioController
            self.window?.makeKeyAndVisible()
            
        }
        
        else if DeviceDetection.sizeToDevice(UIScreen.mainScreen().bounds.size) == AppleDevices.iPad{
            
            self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
            let myStoryboard = UIStoryboard(name: "iPad", bundle: nil)
            
            let myNavigatioController = myStoryboard.instantiateInitialViewController() as! UINavigationController
            let firstVC = myStoryboard.instantiateViewControllerWithIdentifier("ViewController") as! ViewController
            
            myNavigatioController.setViewControllers([firstVC], animated: false)
            self.window?.rootViewController = myNavigatioController
            self.window?.makeKeyAndVisible()
            
        }
    }

}

