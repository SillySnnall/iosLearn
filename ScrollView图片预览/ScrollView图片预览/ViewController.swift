//
//  ViewController.swift
//  ScrollView图片预览
//
//  Created by sillysnnall on 2018/11/13.
//  Copyright © 2018年 sillysnnall. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let scroll = UIScrollView()
        scroll.frame = CGRect(x: view.frame.size.width*0.15, y: view.frame.size.width*0.15, width: 300, height: 300)
        scroll.backgroundColor = UIColor.orange
        view.addSubview(scroll)
        
        let img = UIImageView(image: UIImage.init(named: "silly"))
        // 把图片添加到scrollView上
        scroll.addSubview(img)
        // 设置scrollView˜的contentSize（滚动范围）
        scroll.contentSize = img.frame.size
        // contentInset:内边距
        scroll.contentInset = UIEdgeInsets(top: 30, left: 30, bottom: 50, right: 50)
        // contentOffset:滚动偏移量,最初的位置
        scroll.contentOffset = CGPoint(x: 100, y: 100)
    }

    

}

