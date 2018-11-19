//
//  TwoViewController.swift
//  导航控制器的切换
//
//  Created by sillysnnall on 2018/11/8.
//  Copyright © 2018年 sillysnnall. All rights reserved.
//

import UIKit

class TwoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       view.backgroundColor = UIColor.red
        let label = UILabel(frame: CGRect(x: view.frame.size.width*0.2, y: view.frame.size.width*0.4, width: 200, height: 30))
        label.text="视图控制器B"
        label.textColor=UIColor.black
        view.addSubview(label)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // 拿到控制器C
        let threeVc = ThreeViewController()
        self.navigationController?.pushViewController(threeVc, animated: true)
    }

}
