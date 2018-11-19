//
//  ViewController.swift
//  抖动动画
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
        v.frame = CGRect(x: 100, y: 100, width: 200, height: 200)
        v.backgroundColor = UIColor.blue
        view.addSubview(v)
        v1 = v
    }

    func animatedText(){
        // 创建一个动画
        let keyAnimate = CAKeyframeAnimation(keyPath: "transform.rotation")
        // 设置动画的偏移位置
        keyAnimate.values = [-2.14/20,2.14/20,-2.14/20]
        // 表示动画执行完成后从图层上移除，图形会恢复到动画执行前的状态
        keyAnimate.isRemovedOnCompletion = false
        // fillmode决定当前对象在没开始前的时间段的一个行为，比如动画开始或者动画结束
        /**
         kCAFillModeForwards: 当动画结束后，layer会一直保持动画的最后一个状态
         
         kCAFillModeBackwards: 在动画开始前，需要将动画加入layer
         
         kCAFillModeBoth: 动画加入后，在开始动画之前，layer处于初始状态，动画结束后，layer保持最后的状态
         
         kCAFillModeRemoved: 默认值，当动画开始前和动画结束后，动画对layer都没有影响
        */
        keyAnimate.fillMode = kCAFillModeBoth
        // 动画持续时间
        keyAnimate.duration = 10.0
        // 动画重复次数
        keyAnimate.repeatCount = 10.0
        // 将动画加入到v中
        self.v1?.layer.add(keyAnimate, forKey: "text")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        animatedText()
    }

}

