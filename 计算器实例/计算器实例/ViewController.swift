//
//  ViewController.swift
//  计算器实例
//
//  Created by sillysnnall on 2018/11/14.
//  Copyright © 2018年 sillysnnall. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       resultLabel.text = "0"
        resultLabel.textColor = UIColor.black
    }

    @IBOutlet weak var resultLabel: UILabel!
    
    enum Operators:String {
        case Add = "+"
        case Subtract = "-"
        case Multiplay = "*"
        case Divide = "/"
        case Empty  = "Empty"
    }
    
    // 第一个数 操作符 第二个数 答案
    var firstNumber  = ""
    var secondNumber  = ""
    var currentOerator = Operators.Empty
    var displayedNumber = ""
    var result = ""
    
    @IBAction func numberSelected(sender:UIButton){
        displayedNumber += String(sender.tag)
        resultLabel.text = displayedNumber
    }
    
    @IBAction func selectedAdd(sender:UIButton){
        selectedOperator(operation: Operators.Add)
    }
    
    @IBAction func selectedSubtract(sender:UIButton){
        selectedOperator(operation: Operators.Subtract)
    }
    
    @IBAction func selectedDivide(sender:UIButton){
        selectedOperator(operation: Operators.Divide)
    }
    
    @IBAction func selectedMultiply(sender:UIButton){
        selectedOperator(operation: Operators.Multiplay)
    }
    
    @IBAction func selectedEqual(sender:UIButton){
        selectedOperator(operation: currentOerator)
    }
    
    
    func selectedOperator(operation:Operators){
        if currentOerator != Operators.Empty{
            if displayedNumber != "" {
                secondNumber = displayedNumber
                displayedNumber = ""
            }
                switch currentOerator {
                case Operators.Add:
                    result = String(Double(firstNumber)! + Double(secondNumber)!)
                case Operators.Subtract:
                    result = String(Double(firstNumber)! - Double(secondNumber)!)
                case Operators.Divide:
                    result = String(Double(firstNumber)! * Double(secondNumber)!)
                case Operators.Multiplay:
                    result = String(Double(firstNumber)! / Double(secondNumber)!)
                    default:
                    print("")
                }
                firstNumber = result
            resultLabel.text = result
            currentOerator = operation
                
            
        }else{
            firstNumber = displayedNumber
            displayedNumber = ""
            
            currentOerator = operation
        }
    }
}

