//
//  ViewController.swift
//  UIView
//
//  Created by sillysnnall on 2018/11/3.
//  Copyright © 2018年 sillysnnall. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // 当程序加载完成是执行一次
    override func viewDidLoad() {
        super.viewDidLoad()
        // 定义一个UIView
        // UIView初始化的时候是在屏幕的左上角，X和Y都是0
        let v1 = UIView(frame: CGRect(x: 60, y: 150, width: 200, height: 150))
        v1.backgroundColor = UIColor.blue
        // 加载到它的父控件VIew中
        view.addSubview(v1)
        
        // UIView初始化的时候是在屏幕的左上角，X和Y都是0
        let v2 = UIView(frame: CGRect(x: 80, y: 200, width: 200, height: 150))
        v2.backgroundColor = UIColor.red
        // 加载到它的父控件VIew中
        view.addSubview(v2)
        
        // UIView初始化的时候是在屏幕的左上角，X和Y都是0
        let v3 = UIView(frame: CGRect(x: 100, y: 250, width: 200, height: 150))
        v3.backgroundColor = UIColor.yellow
        // 加载到它的父控件VIew中
        view.addSubview(v3)
        // 将某个view 放置到最底层
        view.sendSubview(toBack: v2)
        // 将某个view 放置到最顶层
        view.bringSubview(toFront: v2)
    }

    // 内存警告
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

