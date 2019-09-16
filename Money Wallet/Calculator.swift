//
//  addExpensesViewController.swift
//  Money Wallet
//
//  Created by Profi on 9/7/19.
//  Copyright © 2019 arh. All rights reserved.
//

import UIKit

class Calculator: UIViewController {
    
    
    
    @IBOutlet weak var categoryLabel: UILabel!
    var category:Category?
    
    //лейбел калькулятора
    @IBOutlet weak var resultLabel: UILabel!
    var dotIsPlaced = false
    var firstNum:Double = 0
    var secondNum:Double = 0
    var operationSign: String = ""
    var stillTyping = false
    var currentInput: Double {
        get {
            return Double(resultLabel.text!)!
        }
        set{
            let value = "\(newValue)"
            let valueArray = value.components(separatedBy: ".")
            if valueArray[1] == "0" {
                resultLabel.text = "\(valueArray[0])"
            }else{
                resultLabel.text = "\(newValue)"
            }
          
            stillTyping = false
        }
    }
    
    @IBAction func digits(_ sender: UIButton) { //цифри
        let number = sender.currentTitle!
        
        if stillTyping {
            if resultLabel.text!.count < 20 {
                resultLabel.text = resultLabel.text! + number
            }
        }else{
            resultLabel.text = number
            stillTyping = true
        }
    }
    
    @IBAction func point(_ sender: UIButton) { //крапка
        if stillTyping && !dotIsPlaced {
            resultLabel.text = resultLabel.text! + "."
            dotIsPlaced = true
        }else if !stillTyping && !dotIsPlaced {
            resultLabel.text = "0."
        }
    }
    //опрації з двома операндами
    func operationWithTwoOperands(operation: (Double, Double) -> Double){
        currentInput = operation(firstNum, secondNum)
        stillTyping = false
    }
    //кнопки +,-,*,/
    @IBAction func Buttons(_ sender: UIButton) {
        operationSign = sender.currentTitle!
        firstNum = currentInput
        stillTyping = false
        dotIsPlaced = false
    }
    //кнопка = (а також +,-,*,/)
    @IBAction func equolityButton(_ sender: UIButton) {
       
        if stillTyping {
            secondNum = currentInput
        }
        dotIsPlaced = false
        
        switch operationSign {
        case "+":
            operationWithTwoOperands{$0 + $1}
        case "-":
            operationWithTwoOperands{$0 - $1}
        case "✕":
            operationWithTwoOperands{$0 * $1}
        case "÷":
            operationWithTwoOperands{$0 / $1}
        default: break
        }
    }
    //кнопка очищення
    @IBAction func clearButton(_ sender: UIButton) {
    
        firstNum = 0
        secondNum = 0
        currentInput = 0
        dotIsPlaced = false
        stillTyping = false
        operationSign = ""
        resultLabel.text = "0"
    }
    //кнопка відсотків
    @IBAction func percentageButton(_ sender: UIButton) {
        if firstNum == 0 {
            currentInput = currentInput / 100
        }else{
            secondNum = firstNum * currentInput / 100
        }
    }
    
    @IBAction func doneButton(_ sender: UIButton) {
        if let result = Double(resultLabel.text ?? "") {
            category?.historyArray.append(Money(value: result))
            self.dismiss(animated: false) {
                self.tabBarController?.selectedIndex = 0
            }
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.categoryLabel.text = category?.name
    }
    
}

