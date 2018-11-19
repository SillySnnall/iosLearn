//
//  ViewController.swift
//  CoreAnimation动画
//
//  Created by sillysnnall on 2018/11/12.
//  Copyright © 2018年 sillysnnall. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       let v = UIView()
        v.frame = CGRect(x: v.frame.origin.x, y: 100, width: 300, height: 300)
        //图片
        let img = UIImageView()
        img.frame = v.frame
        img.image = UIImage.init(named: "silly")
        v.addSubview(img)
        view.addSubview(v)
        // 图片阴影颜色
        v.layer.shadowColor = UIColor.blue.cgColor
        // 阴影偏移量
        v.layer.shadowOffset = CGSize(width: 0, height: 2)
        // 阴影半径
        v.layer.shadowRadius = 10
        // 阴影透明度,默认为0
        v.layer.shadowOpacity = 1.0
        // 裁剪成圆形
        img.layer.cornerRadius = img.frame.width/2.0
        // 边框宽度
        img.layer.borderWidth = 1
        // 边框颜色
        img.layer.backgroundColor = UIColor.red.cgColor
        // 裁剪圆形以外的区域
        img.layer.masksToBounds = true
        
        // 设置了裁剪，阴影要设置到外层view上
    }

   


}

