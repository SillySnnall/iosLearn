//
//  ViewController.swift
//  UIView动画
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
        v.frame = CGRect(x: 50, y: 100, width: 200, height: 200)
        v.backgroundColor = UIColor.red
        view.addSubview(v)
        v1 = v
    }

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        UIView.animate(withDuration: 5.0) {
//            self.v1?.frame = CGRect(x: 150, y: 120, width: 100, height: 80)
//            self.v1?.backgroundColor = UIColor.blue
//        }
        
        UIView.animate(withDuration: 5.0, animations: {
            self.v1?.frame = CGRect(x: 150, y: 120, width: 100, height: 80)
            self.v1?.backgroundColor = UIColor.blue
        }) { (value) in
            self.v1?.layer.cornerRadius = (self.v1?.frame.size.width)!
            self.v1?.layer.masksToBounds = true
        }
    }
    


}

