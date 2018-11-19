//
//  ViewController.swift
//  单击手势
//
//  Created by sillysnnall on 2018/11/9.
//  Copyright © 2018年 sillysnnall. All rights reserved.
//

import UIKit

/**
 在控件中，如果没有点击事件，那么需要给该控件添加手势才可以响应点击事件
 在添加手势需要开启用户交互
 */
class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        for i in 0...10{
            let label1 = UILabel(frame: CGRect(x: 20, y: i*40, width: 200, height: 40))
            label1.tag = i
            label1.text = "只是第\(i)单击手势"
            label1.textColor = UIColor.red
            label1.backgroundColor = UIColor(
                red: CGFloat(arc4random()%256)/255.0,
                green: CGFloat(arc4random()%256)/255.0,
                blue: CGFloat(arc4random()%256)/255.0,
                alpha: 0.7)
            label1.textAlignment = .center
            // 给控件添加手势：必须要开启用户交互
            label1.isUserInteractionEnabled = true
            view.addSubview(label1)
            
            // 添加手势
            // UITapGestureRecognizer是一个手势的集合(父类)
            let tapGesture = UITapGestureRecognizer.init()
            tapGesture.addTarget(self, action: #selector(tapClick(sender:)))
            // 添加手势到label
            label1.addGestureRecognizer(tapGesture)
        }
    }

    @objc func tapClick(sender:UITapGestureRecognizer){
        let myLabel = view.viewWithTag((sender.view?.tag)!) as! UILabel
        print(myLabel.text!)
        view.backgroundColor = UIColor.blue
    }
    
}

