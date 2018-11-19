//
//  ViewController.swift
//  UIScrollView
//
//  Created by sillysnnall on 2018/11/13.
//  Copyright © 2018年 sillysnnall. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 创建滚动视图
        let scroll = UIScrollView()
        // 设置滚动视图的frame
        scroll.frame = self.view.frame
        scroll.backgroundColor = UIColor.orange
        
        for i in 0...4{
            let v = UIView()
            // 设置v的frame
            v.frame = CGRect(x: CGFloat(i)*self.view.frame.size.width, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height)
            // 设置v的背景颜色
            v.backgroundColor = UIColor(red: CGFloat(arc4random()%256)/255.0, green: CGFloat(arc4random()%256)/255.0, blue: CGFloat(arc4random()%256)/255.0, alpha: 0.6)
            scroll.addSubview(v)
        }
        // 设置srcoll的contentSize:srcollView的滚动范围
        // 如果不设置srcollView的滚动范围，那么srcollView是不能滚动的
        scroll.contentSize = CGSize(width: 4.0*view.frame.size.width, height: view.frame.size.height)
        // 添加scrollView到控制器
        view.addSubview(scroll)
        
        // 开启分页效果
        scroll.isPagingEnabled = true
        // 隐藏滚动条
        scroll.showsHorizontalScrollIndicator = true
        // 改变滚动条的颜色
        scroll.indicatorStyle = .white
        // 取消弹簧效果
        scroll.bounces = false
        // 设置代理
        scroll.delegate = self
    }

}

/// MARK: scrollView代理
extension ViewController{
    // 在scrollView正在滚动的时候被调用
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print(scrollView)
    }
}

