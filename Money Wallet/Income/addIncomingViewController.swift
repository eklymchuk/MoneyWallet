//
//  addIncomingViewController.swift
//  Money Wallet
//
//  Created by Profi on 9/7/19.
//  Copyright © 2019 arh. All rights reserved.
//

import UIKit

class addIncomingViewController: UIViewController {
    
    var numberFromScreen:Double = 0
    var firstNum:Double = 0
    var mathSign:Bool = false
    var operation:Int = 0
    
    @IBOutlet weak var result: UILabel!
    
    @IBAction func digits(_ sender: UIButton) {
        if mathSign == true {
            result.text = String(sender.tag)
            mathSign = false
        }else{
            result.text = result.text! + String(sender.tag)
            
        }
        numberFromScreen = Double(result.text!)!
    }
    
    @IBAction func Buttons(_ sender: UIButton) {
        if result.text != "" && sender.tag != 10 && sender.tag != 15 {
            firstNum = Double(result.text!)!
            if sender.tag == 11 { //Деление
                result.text = "/"
            }else if sender.tag == 12 { //Умножение
                result.text = "*"
            }else if sender.tag == 13 { //Вычитание
                result.text = "-"
            }else if sender.tag == 14 { //Добавление
                result.text = "+"
            }
            operation = sender.tag
            mathSign = true
            
        }else if sender.tag == 15 { //Посчитать все
            if operation == 11 {
                result.text = String(firstNum / numberFromScreen)
            }else if operation == 12 {
                result.text = String(firstNum * numberFromScreen)
            }else if operation == 13 {
                result.text = String(firstNum - numberFromScreen)
            }else if operation == 14 {
                result.text = String(firstNum + numberFromScreen)
                
            }
        }else if sender.tag == 10 {
            result.text = ""
            firstNum = 0
            numberFromScreen = 0
            operation = 0
        }
    }
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
}
