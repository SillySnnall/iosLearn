//
//  ViewController.swift
//  UILabel
//
//  Created by sillysnnall on 2018/11/3.
//  Copyright © 2018年 sillysnnall. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 创建一个label
      let label = UILabel(frame: CGRect(x: 100, y: 150, width: 200, height: 300))
        //背景色
        label.backgroundColor = UIColor.brown
        // 内容
        label.text = "我是一段文字的就是dasdaddsa大萨达撒垃圾的垃圾了大萨达所多"
        // 文字颜色
        label.textColor = UIColor.orange
        // 文字对齐方式
        label.textAlignment = .center
        //文字阴影颜色
        label.shadowColor = UIColor.red
        //文字阴影位置
        label.shadowOffset = CGSize(width: 2, height: 2)
        // 内容行数(默认：自动换行)
        label.numberOfLines = 2
        // 字体大小
        label.font = UIFont.systemFont(ofSize: 30.0)
//        label.font = UIFont.systemFont(ofSize: 18.0, weight: UIFont.Weight(rawValue: 45.5))
        // 要配合UIButton使用
        if label.isHighlighted{
            print("label Highlighted")
        }
        view.addSubview(label)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

