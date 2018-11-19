//
//  DataModel.swift
//  NSuserDefaults本地化存储
//
//  Created by sillysnnall on 2018/11/8.
//  Copyright © 2018年 sillysnnall. All rights reserved.
//

import UIKit

class DataModel: NSObject {
    var userList = [UserInfo]()
    
    override init() {
        super.init()
        print("沙盒文件路径\(DocmentsDirectory())")
        print("文件路径\(dataFilePath())")
    }
    
    // 保存数据的 方法
    func saveData() {
        let data = NSMutableData()
        // 声明一个处理对象
        let archiver = NSKeyedArchiver(forWritingWith:data)
        // 将userList以对应的关键字进行编码
        archiver.encode(userList,forKey:"userList")
        // 结束编码
        archiver.finishEncoding()
        // 数据写入
        data.write(toFile: dataFilePath(), atomically: true)
    
    }
    
    // 读取数据
    func loadData(){
        // 获取本地数据文件地址
        let path =  self.dataFilePath()
        // 创建文件管理器
        let defaultManager = FileManager()
        // 通过文件地址判断数据是否存在
        if defaultManager.fileExists(atPath: path){
            // 读取文件
            let url = URL(fileURLWithPath: path)
            let data = try! Data(contentsOf: url)
            // 解码器
            let unarchiver = NSKeyedUnarchiver(forReadingWith: data)
            // 通过归档设置的关键字还原userList
            unarchiver.decodeObject(forKey: "userList")
        }
    }
    
    // 获取沙盒文件夹路径
    func DocmentsDirectory()->String{
        let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        let docmentsDirectory = paths.first!
        return docmentsDirectory
    }
    // 获取数据文件地址
    func dataFilePath() -> String {
        return self.DocmentsDirectory().appendingFormat("/userList.plist")
    }
}
