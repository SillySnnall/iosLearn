//
//  ViewController.swift
//  缩放手势
//
//  Created by sillysnnall on 2018/11/12.
//  Copyright © 2018年 sillysnnall. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var v1:UIView?
    override func viewDidLoad() {
        super.viewDidLoad()
        let v = UIView()
        v.frame = CGRect(x: 20, y: 100, width: 100, height: 100)
        v.backgroundColor = UIColor.blue
        // 创建一个图片管理器
        let img = UIImageView.init(image: UIImage.init(named: "silly"))
        v.addSubview(img)
        view.addSubview(v)
        v1 = v
        // 创建缩放手势
        let pinchGesTure = UIPinchGestureRecognizer()
        pinchGesTure.addTarget(self, action: #selector(pinchClick(selder:)))
        view.addGestureRecognizer(pinchGesTure)
    }

    @objc func pinchClick(selder:UIPinchGestureRecognizer){
        // 缩放手势的比例 0~1 之间
        let myScale = selder.scale
        // 原始比例
        let scaleOffset:CGFloat = 1.0
        // 如果myScale的比例大于1的话说明图片在放大
        if myScale > 1{
            v1?.transform = CGAffineTransform.init(scaleX: scaleOffset+myScale-1, y: scaleOffset+myScale-1)
        }else{
            v1?.transform = CGAffineTransform.init(scaleX: scaleOffset*myScale, y: scaleOffset*myScale)
        }
    }
   

}

