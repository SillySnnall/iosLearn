//
//  ViewController.swift
//  UICollenctionVIew表格视图
//
//  Created by sillysnnall on 2018/11/13.
//  Copyright © 2018年 sillysnnall. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ViewController.cellID, for: indexPath)
        cell.backgroundColor = UIColor.red
        let img = UIImageView(image: UIImage.init(named: "silly"))
        cell.addSubview(img)
        return cell
    }
    
    static let cellID = "cellID"

    override func viewDidLoad() {
        super.viewDidLoad()
        // 创建一个布局
        let layout = UICollectionViewFlowLayout.init()
        // 设置item的大小
        layout.itemSize = CGSize(width: 80, height: 80)
        //设置item之间的间距
        layout.minimumInteritemSpacing = 8
        // 设置每一行的间距
        layout.minimumLineSpacing = 10
        // 创建collectionView表格视图
        let collection = UICollectionView(frame: view.bounds, collectionViewLayout: layout)
        collection.backgroundColor = UIColor.white
        // 设置collectionVIew表格视图的数据源
        collection.dataSource = self
        //添加到控制器
        view.addSubview(collection)
        // 注册collectionView
        collection.register(UICollectionViewCell.self, forCellWithReuseIdentifier: ViewController.cellID)
    }
}

