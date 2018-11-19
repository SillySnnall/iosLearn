//
//  ViewController.swift
//  旋转手势
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
        v.frame = CGRect(x: 50, y: 100, width: 80, height: 80)
        let img = UIImageView(image: UIImage.init(named: "silly"))
        img.center.y = view.frame.origin.x
        v.addSubview(img)
        view.addSubview(v)
    //添加旋转手势
        let rotation = UIRotationGestureRecognizer()
        rotation.addTarget(self, action: #selector(rotationClick(sender:)))
        view.addGestureRecognizer(rotation)
        v1 = v
    
    }

    @objc func rotationClick(sender:UIRotationGestureRecognizer){
        // 拿到原始的度数
        let netRotation:CGFloat = 1.0
        // 旋转的度数
        let rotation:CGFloat = sender.rotation
        // 改变图片旋转
        v1?.transform = CGAffineTransform.init(rotationAngle: netRotation+rotation)
        // 状态结束，保存数据
        if sender.state == UIGestureRecognizerState.ended{
            
            print(netRotation+rotation)
        }
    }


}

