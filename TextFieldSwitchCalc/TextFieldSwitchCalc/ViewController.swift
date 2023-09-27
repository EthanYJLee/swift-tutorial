//
//  ViewController.swift
//  TextFieldSwitchCalc
//
//  Created by 이영진 on 2023/02/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfNum1: UITextField!
    @IBOutlet weak var tfNum2: UITextField!
    
    
    @IBOutlet weak var addResult: UITextField!
    @IBOutlet weak var subResult: UITextField!
    @IBOutlet weak var mulResult: UITextField!
    @IBOutlet weak var divResult: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func btnCalc(_ sender: UIButton) {
        let num1 = tfNum1.text ?? "0"
        let num2 = tfNum2.text ?? "0"
        
        let calculation = Calculation()
        
        let result:Array<Double> = calculation.calc(num1: num1, num2: num2)
        addResult.text = String(result[0])
        subResult.text = String(result[1])
        mulResult.text = String(result[2])
        divResult.text = String(result[3])
        
    }
    
    
    @IBAction func btnClear(_ sender: UIButton) {
        tfNum1.text?.removeAll()
        tfNum2.text?.removeAll()
        addResult.text?.removeAll()
        subResult.text?.removeAll()
        mulResult.text?.removeAll()
        divResult.text?.removeAll()
    }
    
    // 아무곳이나 눌러 softkeyboard 지우기
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    @IBAction func switchAdd(_ sender: UISwitch) {
        if sender.isOn{
            
        }else{
            
        }
    }
    
    
    @IBAction func switchSub(_ sender: UISwitch) {
    }
    
    @IBAction func switchMul(_ sender: UISwitch) {
    }
    
    @IBAction func switchDiv(_ sender: UISwitch) {
    }
}

