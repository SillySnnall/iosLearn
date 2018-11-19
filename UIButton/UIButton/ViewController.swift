//
//  ViewController.swift
//  UIButton
//
//  Created by sillysnnall on 2018/11/3.
//  Copyright © 2018年 sillysnnall. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 创建UIButton
        let btn =  UIButton(type: .custom)
        btn.frame = CGRect(x: 65, y: 150, width: 150, height: 30)
        // 设置标题
        btn.setTitle("我是按钮", for: .normal)
        // 设置颜色
        btn.setTitleColor(UIColor.black, for: .normal)
        // 背景色
        btn.backgroundColor = UIColor.orange
        // 高亮状态标题
        btn.setTitle("我是高亮状态", for: .highlighted)
        // 高亮状态颜色
        btn.setTitleColor(UIColor.white, for: .highlighted)
        // 监听点击事件
        btn.addTarget(self, action: #selector(btnClick), for: .touchUpInside)
        // 将button添加到view
        view.addSubview(btn)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func btnClick(){
        UIView.animate(withDuration: 5.0){
            let v = UIView(frame: CGRect(x: 150, y: 150, width: 200, height: 150))
            v.backgroundColor = UIColor.blue
            self.view.addSubview(v)
        }
    }
}

