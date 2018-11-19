//
//  UserInfo.swift
//  NSuserDefaults本地化存储
//
//  Created by sillysnnall on 2018/11/8.
//  Copyright © 2018年 sillysnnall. All rights reserved.
//

import UIKit

class UserInfo: NSObject,NSCoding {
//    姓名
    var name : String?
//    电话号码
    var phone : String?
    
//    构造方法
    required init(name:String = "",phone :String = "") {
        self.name = name
        self.phone = phone
    }
    
    // 从Object解析回来
    required init(coder decoder:NSCoder) {
        self.name = decoder.decodeObject(forKey:"name") as!String?
        self.phone = decoder.decodeObject(forKey: "phone") as!String?
    }
    
    // 编码成object
    func encode(with coder:NSCoder) {
        coder.encode(name,forKey:"name")
        coder.encode(phone,forKey:"phone")
    }
}
