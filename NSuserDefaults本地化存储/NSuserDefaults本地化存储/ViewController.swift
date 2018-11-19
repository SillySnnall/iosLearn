//
//  ViewController.swift
//  NSuserDefaults本地化存储
//
//  Created by sillysnnall on 2018/11/8.
//  Copyright © 2018年 sillysnnall. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var dataModel = DataModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        CreateData()
        // 保存数据
       let btn1 = UIButton(type: .custom)
        btn1.frame = CGRect(x: 100, y: 150, width: 150, height: 30)
        btn1.setTitle("保存", for: .normal)
        btn1.setTitleColor(UIColor.black, for: .normal)
        btn1.addTarget(self, action: #selector(saveBtn), for: .touchUpInside)
        view.addSubview(btn1)
        // 读取数据
        let btn2 = UIButton(type: .custom)
        btn2.frame = CGRect(x: 100, y: 300, width: 150, height: 30)
        btn2.setTitle("读取", for: .normal)
        btn2.setTitleColor(UIColor.black, for: .normal)
        btn2.addTarget(self, action: #selector(loadBtn), for: .touchUpInside)
        view.addSubview(btn2)
    }

   // 创建一个模拟数据
    func CreateData(){
        dataModel.userList.append(UserInfo(name: "jack", phone: "125452254184"))
        dataModel.userList.append(UserInfo(name: "qwe", phone: "125452254184"))
        dataModel.userList.append(UserInfo(name: "zxx", phone: "454345345435"))
        dataModel.userList.append(UserInfo(name: "rere", phone: "64343434"))
        dataModel.userList.append(UserInfo(name: "vcvb", phone: "12121414343"))
    }
    
    // 保存数据
    @objc func saveBtn(){
        dataModel.saveData()
    }
    
    // 读取数据
    @objc func loadBtn(){
        dataModel.loadData()
    }
}

