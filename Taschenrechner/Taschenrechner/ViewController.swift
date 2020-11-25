//
//  ViewController.swift
//  Taschenrechner
//
//  Created by Marcel Bienia on 13.11.20.
//

import UIKit

class ViewController: UIViewController {
    
    // Output Label
    @IBOutlet weak var label: UILabel!
    
    // system Variablen
    var numOne = -1
    var numTwo = -1
    // 1=+ , 2=- , 3=* , 4=/
    var calcType = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // calcutlation Button Actions
    // +
    @IBAction func plusAction(_ sender: UIButton) {
        if numOne != -1 && numTwo == -1 && calcType == 0 {
            calcType = 1
            label.text = "+"
        }   else {
            label.text = "Falsche Eingabe"
        }
    }
    // -
    @IBAction func minusAction(_ sender: UIButton) {
        if numOne != -1 && numTwo == -1 && calcType == 0 {
            calcType = 2
            label.text = "-"
        }   else {
            label.text = "Falsche Eingabe"
        }
    }
    // *
    @IBAction func multAction(_ sender: UIButton) {
        if numOne != -1 && numTwo == -1 && calcType == 0 {
            calcType = 3
            label.text = "*"
        }   else {
            label.text = "Falsche Eingabe"
        }
    }
    // /
    @IBAction func divAction(_ sender: UIButton) {
        if numOne != -1 && numTwo == -1 && calcType == 0 {
            calcType = 4
            label.text = "/"
        }   else {
            label.text = "Falsche Eingabe"
        }
    }
    
    // number button Action
    
    // 1
    @IBAction func oneAction(_ sender: UIButton) {
        if numOne == -1 && numTwo == -1 && calcType == 0{
            numOne = 1
            label.text = String(numOne)
        } else if numOne != -1 && numTwo == -1 && calcType != 0 {
            numTwo = 1
            label.text = String(numTwo)
        } else {
            label.text = "X1"
        }
    }
    // 2
    @IBAction func twoAction(_ sender: UIButton) {
        if numOne == -1 && numTwo == -1 && calcType == 0{
            numOne = 2
            label.text = String(numOne)
        } else if numOne != -1 && numTwo == -1 && calcType != 0 {
            numTwo = 2
            label.text = String(numTwo)
        } else {
            label.text = "X2"
        }
    }
    // 3
    @IBAction func threeAction(_ sender: UIButton) {
        if numOne == -1 && numTwo == -1 && calcType == 0{
            numOne = 3
            label.text = String(numOne)
        } else if numOne != -1 && numTwo == -1 && calcType != 0 {
            numTwo = 3
            label.text = String(numTwo)
        } else {
            label.text = "X3"
        }
    }
    // 4
    @IBAction func fourAction(_ sender: UIButton) {
        if numOne == -1 && numTwo == -1 && calcType == 0{
            numOne = 4
            label.text = String(numOne)
        } else if numOne != -1 && numTwo == -1 && calcType != 0 {
            numTwo = 4
            label.text = String(numTwo)
        } else {
            label.text = "X4"
        }
    }
    // 5
    @IBAction func fiveAction(_ sender: UIButton) {
        if numOne == -1 && numTwo == -1 && calcType == 0{
            numOne = 5
            label.text = String(numOne)
        } else if numOne != -1 && numTwo == -1 && calcType != 0 {
            numTwo = 5
            label.text = String(numTwo)
        } else {
            label.text = "X5"
        }
    }
    // 6
    @IBAction func sixAction(_ sender: UIButton) {
        if numOne == -1 && numTwo == -1 && calcType == 0{
            numOne = 6
            label.text = String(numOne)
        } else if numOne != -1 && numTwo == -1 && calcType != 0 {
            numTwo = 6
            label.text = String(numTwo)
        } else {
            label.text = "X6"
        }
    }
    // 7
    @IBAction func sevenAction(_ sender: UIButton) {
        if numOne == -1 && numTwo == -1 && calcType == 0{
            numOne = 7
            label.text = String(numOne)
        } else if numOne != -1 && numTwo == -1 && calcType != 0 {
            numTwo = 7
            label.text = String(numTwo)
        } else {
            label.text = "X7"
        }
    }
    // 8
    @IBAction func eightAction(_ sender: UIButton) {
        if numOne == -1 && numTwo == -1 && calcType == 0{
            numOne = 8
            label.text = String(numOne)
        } else if numOne != -1 && numTwo == -1 && calcType != 0 {
            numTwo = 8
            label.text = String(numTwo)
        } else {
            label.text = "X8"
        }
    }
    // 9
    @IBAction func nineAction(_ sender: UIButton) {
        if numOne == -1 && numTwo == -1 && calcType == 0{
            numOne = 9
            label.text = String(numOne)
        } else if numOne != -1 && numTwo == -1 && calcType != 0 {
            numTwo = 9
            label.text = String(numTwo)
        } else {
            label.text = "X9"
        }
    }
    // 0
    @IBAction func zeroAction(_ sender: UIButton) {
        if numOne == -1 && numTwo == -1 && calcType == 0{
            numOne = 0
            label.text = String(numOne)
        } else if numOne != -1 && numTwo == -1 && calcType != 0 {
            numTwo = 0
            label.text = String(numTwo)
        } else {
            label.text = "X0"
        }
        
    }
    
    // delete or result
    // delete
    @IBAction func deleteAction(_ sender: UIButton) {
        //reset
        numOne = -1
        numTwo = -1
        calcType = 0
        label.text = String(0)
    }
    // result
    @IBAction func resultAction(_ sender: UIButton) {
        var sum = 0
        // calculate result
        switch calcType {
        case 1: sum = numOne + numTwo
        case 2: sum = numOne - numTwo
        case 3: sum = numOne * numTwo
        case 4: sum = Int(numOne / numTwo)
        default:
            label.text = "Eingabe falsch"
        }
        //show result
        label.text = String(sum)
        
        //reset
        numOne = -1
        numTwo = -1
        calcType = 0
    }
    

}

