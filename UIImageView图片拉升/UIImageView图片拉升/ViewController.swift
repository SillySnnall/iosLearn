//
//  ViewController.swift
//  UIImageView图片拉升
//
//  Created by sillysnnall on 2018/11/3.
//  Copyright © 2018年 sillysnnall. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let img = UIImageView()
        img.frame = CGRect(x: 40, y: 40, width: 360, height: 300)
        
         // 矩形内的区域表示
        let image = UIImage.init(named: "06")?.resizableImage(withCapInsets: UIEdgeInsetsMake(25, 25, 10, 10), resizingMode: .stretch)
       
        img.image = image
        // 图片拉升模式
        // scaleAspectFill: 在保持纵横比的前提下，缩放图片，使图片充满UIImageVIew
        // scaleAspectFit:在保持纵横比的前提下，缩放图片，使图片在UIImageView中都显示出来
        // scaleToFill:缩放图片，不保持纵横比，直接在UIImageView中显示出来
        img.contentMode = .scaleToFill
        
        view.addSubview(img)
    }


}

