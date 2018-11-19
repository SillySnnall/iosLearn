//
//  AppDelegate.swift
//  导航控制器
//
//  Created by sillysnnall on 2018/11/8.
//  Copyright © 2018年 sillysnnall. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    // 当程序启动的时候会调用这个方法
    // 把要启动的视图控制器卸载这个方法里面
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // 创建一个视图控制器
        let v = ViewController()
        // 创建一个导航控制器
        let nav = UINavigationController(rootViewController: v)
        // 创建一个window
        self.window = UIWindow(frame: UIScreen.main.bounds)
        // 添加控制器到window
        self.window?.rootViewController=nav
        // 显示window
        self.window?.makeKeyAndVisible()
        return true
    }

    // 点击手机的home键，从前台退到后台会调用这个方法
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    // 当点击手机home，已经进入后台的时候会调用这个方法
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    // 再打开程序的时候，从后台到前台的时候会调用这个方法
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    //  当我们程序退出的时候会调用这个方法
    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    // 当application将要关闭的时候会调用这个方法
    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

