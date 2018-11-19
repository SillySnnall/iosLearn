//
//  ViewController.swift
//  UITextField
//
//  Created by sillysnnall on 2018/11/3.
//  Copyright © 2018年 sillysnnall. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       let textFIeld = UITextField()
        textFIeld.frame = CGRect(x: view.frame.size.width*0.2, y: view.frame.size.height*0.2, width: 200, height: 30)
        textFIeld.backgroundColor = UIColor.darkGray
        // 提示语
        textFIeld.placeholder = "请输入用户账号"
        textFIeld.font = UIFont.systemFont(ofSize: 15.0)
        textFIeld.textColor = UIColor.red
        // 文字对齐方式
        textFIeld.textAlignment = .center
        // 水平对齐方式
        textFIeld.contentHorizontalAlignment = .left
        // 文本框边框样式
        textFIeld.borderStyle = .roundedRect
        // 成为文本框代理
        textFIeld.delegate = self
        view.addSubview(textFIeld)
    }

  

}

// 文本框的代理方法
extension ViewController : UITextFieldDelegate{
    // 点击文本框会弹出键盘
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return true
    }
    // 点击return退出键盘
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // 这个方法是取消第一响应者状态
        textField.resignFirstResponder()
        return true
    }
    // 输入框结束编辑的时候会调用这个方法
    func textFieldDidEndEditing(_ textField: UITextField) {
        
    }
    // 当前文本框中文本变化时会调用这个方法
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return true
    }
    // 文本框是否可以清楚内容
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        return true
    }
    // 文本框已近开始编辑的时候会调用这个方法
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
    }
}





