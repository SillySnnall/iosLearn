//
//  ViewController.swift
//  UIImageView
//
//  Created by sillysnnall on 2018/11/3.
//  Copyright © 2018年 sillysnnall. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var v = UIImageView()
    override func viewDidLoad() {
        super.viewDidLoad()
        v.frame = CGRect(x: 150, y: 150, width: 100, height: 80)
        v.backgroundColor = UIColor.blue
        // 添加图片
        let image = UIImage.init(named: "silly")
        v.image = image
        //图片裁剪圆角
        v.layer.cornerRadius = 35
        v.layer.masksToBounds = true
        
        // 用户昵称
        let label = UILabel(frame: CGRect(x: 150, y: 90, width: 150, height: 30))
        label.text="用户昵称：Jack"
        label.textColor = UIColor.black
        
        // 通过点击事件更改头像
        let btn = UIButton(type: .custom)
        btn.frame = CGRect(x: 150, y: 120, width: 100, height: 30)
        btn.backgroundColor = UIColor.red
        btn.setTitle("更换头像", for: .normal)
        btn.setTitleColor(UIColor.black, for: .normal)
        btn.addTarget(self, action: #selector(btnClick), for: .touchUpInside)
        
        view.addSubview(v)
        view.addSubview(label)
        view.addSubview(btn)
    }

   @objc func btnClick(){
    v.image = UIImage.init(named: "06")
    }
}

