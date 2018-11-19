//
//  AppDelegate.swift
//  分栏控制器
//
//  Created by sillysnnall on 2018/11/8.
//  Copyright © 2018年 sillysnnall. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
         self.window = UIWindow(frame: UIScreen.main.bounds)

        //       初始化UITabBarController
        let tab = UITabBarController()

//        拿到视图控制器
//        one
        let oneVc = OneViewController()
        oneVc.title = "微信"
//        oneVc.tabBarItem.image = UIImage.init(named: "me_selected")
        // 创建导航控制器，并把视图控制器加入导航控制器中成为导航控制器的根视图控制器
        let nav1 = UINavigationController(rootViewController: oneVc)
        nav1.title = "微信"
        tab.addChildViewController(nav1)
        
//        two
        let twoVc = TwoViewController()
         twoVc.title = "通讯录"
//        twoVc.tabBarItem.image = UIImage.init(named: "me")
         let nav2 = UINavigationController(rootViewController: twoVc)
        nav2.title = "通讯录"
         tab.addChildViewController(nav2)
        
//        three
        let threeVc = ThreeViewController()
         threeVc.title = "发现"
//        threeVc.tabBarItem.image = UIImage.init(named: "news_selected")
         let nav3 = UINavigationController(rootViewController: threeVc)
        nav3.title = "发现"
         tab.addChildViewController(nav3)
        
//        free
        let freeVc = FreeViewController()
         freeVc.title = "我"
//        freeVc.tabBarItem.image = UIImage.init(named: "news")
         let nav4 = UINavigationController(rootViewController: freeVc)
        nav4.title = "我"
         tab.addChildViewController(nav4)
        
//        把子控制器添加到分栏控制器中
//        tab.viewControllers = [oneVc,twoVc,threeVc,freeVc]
        
//        把分栏控制器添加到window中
        self.window?.rootViewController = tab
        
        //        显示窗口
        self.window?.makeKeyAndVisible()
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

