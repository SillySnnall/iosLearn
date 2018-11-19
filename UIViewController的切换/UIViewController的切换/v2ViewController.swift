//
//  v2ViewController.swift
//  UIViewController的切换
//
//  Created by sillysnnall on 2018/11/8.
//  Copyright © 2018年 sillysnnall. All rights reserved.
//

import UIKit

class v2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.orange
        let label = UILabel()
        label.frame = CGRect(x: 200, y: 180, width: 130, height: 30)
        label.text = "控制器B"
        label.textColor = UIColor.black
        view.addSubview(label)
        
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.dismiss(animated: true) {
            print("返回到控制器A")
        }
    }

}
