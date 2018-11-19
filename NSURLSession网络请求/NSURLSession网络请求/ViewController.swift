//
//  ViewController.swift
//  NSURLSession网络请求
//
//  Created by sillysnnall on 2018/11/13.
//  Copyright © 2018年 sillysnnall. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 获取URL
        // 创建URL对象
        let url:URL = URL(string: "https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text%3D%22nome%2C%20ak%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys")!
        // 创建请求对象，request对象
        let urlRequest:URLRequest = URLRequest(url: url)
        // 创建一个会话对象
        let session = URLSession.shared
        // 创建一个任务
        let dataTask = session.dataTask(with: urlRequest) {
            (data, response, error) in
            // 请求成功后需要做的事情
            if error != nil{
                print(error?.localizedDescription as Any)
            }else{
                let jsonStr = String(data: data!, encoding: String.Encoding.utf8)
                print(jsonStr as Any)
            }
            
        }
    
        // 开启任务
        dataTask.resume()
    }
}

