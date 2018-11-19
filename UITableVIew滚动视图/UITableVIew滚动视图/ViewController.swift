//
//  ViewController.swift
//  UITableVIew滚动视图
//
//  Created by sillysnnall on 2018/11/13.
//  Copyright © 2018年 sillysnnall. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //定义可重用表示
    static let cellID:String = "cellID"
    
    let arr = ["jack","tony","allen"]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // 创建表格视图
        let tabView = UITableView(frame: view.bounds, style: .plain)
        // 把视图添加到控制器
        view.addSubview(tabView)
        
        // 设置表格视图的数据源
        tabView.dataSource = self
        //设置表格视图的代理
        tabView.delegate = self
        // 注册可重用的cell
        tabView.register(UITableViewCell.self, forCellReuseIdentifier: ViewController.cellID)
    }
}


/// MARK:表格视图的数据源方法
extension ViewController:UITableViewDataSource{
    // 总共有多少cell
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    // 每一个cell的数据
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ViewController.cellID, for: indexPath)
        cell.textLabel?.text  = "TableView\(indexPath.row)"
        cell.imageView?.image = UIImage.init(named: "silly")
        print(cell)
        return cell
    }
    
    // 有多少组cell
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
}

// MARK:表格视图的代理方法
extension ViewController:UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
    }
}

