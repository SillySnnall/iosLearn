//
//  ViewController.swift
//  UIViewController的切换
//
//  Created by sillysnnall on 2018/11/8.
//  Copyright © 2018年 sillysnnall. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // 视图初始化
    // 尽量不要直接调用，因为是由系统调用的
    // 如果要调用，不要重写loadView()
//    override func loadView() {
//
//    }
    
    // 当程序加载完成时会调用一次，只调用一次
    override func viewDidLoad() {
        super.viewDidLoad()
        let btn = UIButton(type: .custom)
        btn.frame = CGRect(x: view.frame.size.width*0.2, y: view.frame.size.height*0.4, width: 230, height: 30)
        btn.setTitle("点击按钮跳转到控制器B", for: .normal)
        btn.setTitleColor(UIColor.black,for:.normal)
        btn.addTarget(self, action: #selector(btnClick), for: .touchUpInside)
        view.addSubview(btn)
        
    }

    @objc func btnClick(){
        // 拿到控制器B，才能切换
        let v2 = v2ViewController()
        self.present(v2, animated: true) {
            print("切换到控制器B")
        }
    }
    
    
    // 当界面即将显示的时候会调用这个方法
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        view.backgroundColor = UIColor.red
        print("界面即将显示")
        
    }
    
    // 当界面已经显示的时候会调用这个方法
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        view.backgroundColor=UIColor.white
        print("界面更已经显示")
    }
    
    // 见面即将消失的时候会调用这个方法
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        view.backgroundColor=UIColor.yellow
        print("界面即将消失")
    }
    
    // 见面消失不见的时候会调用这个方法
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        view.backgroundColor=UIColor.green
        print("界面消失不见了")
    }


}

