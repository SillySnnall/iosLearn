//
//  ThreeViewController.swift
//  导航控制器的切换
//
//  Created by sillysnnall on 2018/11/8.
//  Copyright © 2018年 sillysnnall. All rights reserved.
//

import UIKit

class ThreeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       view.backgroundColor = UIColor.green
        let label = UILabel(frame: CGRect(x: view.frame.size.width*0.2, y: view.frame.size.width*0.4, width: 200, height: 30))
        label.text="视图控制器C"
        label.textColor=UIColor.black
        view.addSubview(label)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.didReceiveMemoryWarning()
        // 跳转索引控制器
//        let vc = navigationController?.viewControllers[0] as!OneViewController
//        _ = self.navigationController?.popToViewController(vc, animated: true)
        
        // 跳转到根控制器
        self.navigationController?.popToRootViewController(animated: true)
    }



}
