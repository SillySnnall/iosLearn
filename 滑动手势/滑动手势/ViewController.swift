//
//  ViewController.swift
//  滑动手势
//
//  Created by sillysnnall on 2018/11/12.
//  Copyright © 2018年 sillysnnall. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var v1:UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
       v1 = UIView()
        v1?.frame = CGRect(x: 50, y: 50, width: 200, height: 200)
        v1?.backgroundColor = UIColor.blue
        // 添加到控制器
        view.addSubview(v1!)
        let swipeGesture = UISwipeGestureRecognizer()
        swipeGesture.addTarget(self, action: #selector(swipe(sender:)))
        // 如果需要左边滑动，那么需要改为left，默认是right
        swipeGesture.direction = UISwipeGestureRecognizerDirection.left
        // 添加手势到v1
        v1?.addGestureRecognizer(swipeGesture)
    }

    @objc func swipe(sender:UISwipeGestureRecognizer){
        var offSet :CGFloat = 0
        // 判断如果滑动手势方向是右边，那么移动View的位置X
        if sender.direction == UISwipeGestureRecognizerDirection.left{
            offSet-=100
            // transform：改变形状或者位置
            v1?.transform = CGAffineTransform.init(translationX: offSet, y: 0)
            print(offSet)
        }
    }
}

