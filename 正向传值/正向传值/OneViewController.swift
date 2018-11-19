//
//  OneViewController.swift
//  正向传值
//
//  Created by sillysnnall on 2018/11/9.
//  Copyright © 2018年 sillysnnall. All rights reserved.
//

import UIKit

//kvo key-value boserving:观察者

class OneViewController: UIViewController
//,Work
{
    
    // 拿到控制器B
    var twoVc = TwoViewController()
    
    var textField:UITextField?
    
    // 用来接收控制器B返回过来的值
    var Amessage:String?
    
    var message:UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 控制器B接收通知
//        let notifyMyCation = NSNotification.Name(rawValue: "message")
        //控制器B成为接收通知的观察者
//        NotificationCenter.default.addObserver(self, selector: #selector(notifyClick(notify:)), name: notifyMyCation, object: nil)
        
        view.backgroundColor = UIColor.white
        // 控制器A
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 150, height: 30))
        label.text = "控制器A"
        label.textColor = UIColor.black
        // 文本输入框
        textField = UITextField(frame: CGRect(x: view.frame.size.width*0.2, y: view.frame.size.height*0.3, width: 150, height: 30))
        textField?.borderStyle = .bezel
        textField?.textColor = UIColor.red
        // 点击按钮
        let btn = UIButton(frame: CGRect(x: view.frame.size.width*0.2, y: view.frame.size.height*0.3+100, width: 230, height: 30))
        btn.setTitle("发送消息给控制器B", for: .normal)
        btn.setTitleColor(UIColor.black, for: .normal)
        // 添加点击事件
        btn.addTarget(self, action: #selector(btnClick), for: .touchUpInside)
        // 接受控制器B的消息
        let label2 = UILabel(frame: CGRect(x: view.frame.size.width*0.2, y: view.frame.size.height*0.3+150, width: 150, height: 30))
        label2.text = "接收控制器B传来的值"
        label2.textColor = UIColor.black
        // 接收到的值
        message = UILabel(frame: CGRect(x: view.frame.size.width*0.2, y: view.frame.size.height*0.3+200, width: 230, height: 30))
        message?.backgroundColor = UIColor.yellow
        message?.textColor = UIColor.red
        // 将控件添加到控制器
        view.addSubview(label)
        view.addSubview(textField!)
        view.addSubview(btn)
        view.addSubview(label2)
        view.addSubview(message!)
        
        // 注册监听对象
        // observer：观察者
        // options:指定返回的字典包含的值：new新值，old旧值
        // context:指针类型，传输我们需要的数据，如果没有数据可以传nil
        twoVc.addObserver(self, forKeyPath: "textMessage", options: NSKeyValueObservingOptions(rawValue:NSKeyValueObservingOptions.new.rawValue), context: nil)
    }
    // 实现监听方法
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        message?.text = String(describing: change)
    }
    
//    @objc func btnClick(){
//        // 拿到控制器B
//        let twoVc = TwoViewController()
//        // 通过属性来传值
//        twoVc.textStr = self.textField?.text
//        // 指定回传的控制器
//        twoVc.oneVc = self
//        self.present(twoVc, animated: true, completion: nil)
//    }
    
//    @objc func btnClick(){
//        // 拿到控制器B
//        let twoVc = TwoViewController()
//        // 成为代理
//        twoVc.delegate = self
//
//        self.present(twoVc, animated: true, completion: nil)
//    }
//
//    func run(textStr: String) {
//        self.message?.text = textStr
//    }
    
//    @objc func btnClick(){
//        // 拿到控制器B
//        let twoVc = TwoViewController()
//        // 使用闭包
//        twoVc.getBlock { (value) in
//            self.message?.text = value
//        }
//        self.present(twoVc, animated: true, completion: nil)
//    }
    
    // 析构函数deinit oc：dealloc
    //系统自动调用
    deinit {
        // 移除观察者
//        NotificationCenter.default.removeObserver(self)
        
        twoVc.removeObserver(self, forKeyPath: "textMessage")
    }
    
    @objc func btnClick(){
        // 拿到控制器B
        let twoVc = TwoViewController()
        
        self.present(twoVc, animated: true, completion: nil)
    }
    
//    @objc func notifyClick(notify:NSNotification){
//        guard let text1:String = notify.object as? String else {
//            return
//        }
//        message?.text = text1
//    }
    
}
