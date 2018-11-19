//
//  TwoViewController.swift
//  正向传值
//
//  Created by sillysnnall on 2018/11/9.
//  Copyright © 2018年 sillysnnall. All rights reserved.
//

import UIKit
// 定义协议
//protocol Work {
//    func run(textStr:String)
//}

// 定义闭包
// 取别名 和OC typedef
typealias textBlock = (String)->()

class TwoViewController: UIViewController {
    // 用来接收控制器A传过来的值
    var textStr:String?
    // 控制器A
    var oneVc:OneViewController?
    
    var textField:UITextField?

    // 定义代理协议，指定谁成为我的代理
//    var delegate:Work?
    
    // 闭包属性
    var block:textBlock?
    
    // 注册被观察者的属性
    var textMessage:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.white
        // 控制器B
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 150, height: 30))
        label.text = "控制器B"
        label.textColor = UIColor.black
        // 文本输入框
        textField = UITextField(frame: CGRect(x: view.frame.size.width*0.2, y: view.frame.size.height*0.3, width: 150, height: 30))
        textField?.borderStyle = .bezel
        textField?.textColor = UIColor.red
        // 点击按钮
        let btn = UIButton(frame: CGRect(x: view.frame.size.width*0.2, y: view.frame.size.height*0.3+100, width: 230, height: 30))
        btn.setTitle("发送消息给控制器A", for: .normal)
        btn.setTitleColor(UIColor.black, for: .normal)
        // 添加点击事件
        btn.addTarget(self, action: #selector(btnClick), for: .touchUpInside)
        // 接受控制器B的消息
        let label2 = UILabel(frame: CGRect(x: view.frame.size.width*0.2, y: view.frame.size.height*0.3+150, width: 150, height: 30))
        label2.text = "接收控制器A传来的值"
        label2.textColor = UIColor.black
        // 接收到的值
        let message = UILabel(frame: CGRect(x: view.frame.size.width*0.2, y: view.frame.size.height*0.3+200, width: 230, height: 30))
        message.backgroundColor = UIColor.yellow
        message.textColor = UIColor.red
        message.text = textStr
        // 将控件添加到控制器
        view.addSubview(label)
        view.addSubview(textField!)
        view.addSubview(btn)
        view.addSubview(label2)
        view.addSubview(message)
    }
    
    func getBlock(block:textBlock?){
        self.block = block
    }

    @objc func btnClick(){
        // 委托方实现代理方法
//        self.delegate?.run(textStr: (self.textField?.text)!)
//        if((self.delegate?.run(textStr: (self.textField?.text)!)) != nil){
//
//        }
        // 指定被观察者属性
        self.setValue(textField?.text, forKey: "textMessage")
        self.dismiss(animated: true) {
            // guard 进行校验
//            guard ((self.delegate?.run(textStr: (self.textField?.text)!)) != nil) else {
//                return
//            }
            
//            guard let block = self.block else{
//                return
//            }
//            // 通过闭包进行回调
//            block((self.textField?.text)!)
            
            // 设置通知中心
//            let notify = NSNotification.Name(rawValue: "message")
            // 控制器B：消息发送者
//            NotificationCenter.default.post(name: notify, object: self.textField?.text, userInfo: nil)
        }
    }
    
    // 界面已消失的时候传入
//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewDidDisappear(true)
//        // 通过保控制器B的值存储到控制器A的属性中
//        self.oneVc?.Amessage = self.textField?.text
//        // 把保存控制器B的值的属性Amessage赋值给控制器A的文本框
//        self.oneVc?.message?.text = self.oneVc?.Amessage
//    }
   
}
