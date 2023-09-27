//
//  ViewController.swift
//  Quiz02
//
//  Created by 이영진 on 2023/02/09.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfNum1: UITextField!
    @IBOutlet weak var tfNum2: UITextField!
    @IBOutlet weak var tfAddition: UITextField!
    @IBOutlet weak var tfSubtraction: UITextField!
    @IBOutlet weak var tfMultiplication: UITextField!
    @IBOutlet weak var tfQuotient: UITextField!
    @IBOutlet weak var tfRemainder: UITextField!
    @IBOutlet weak var lblMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblMessage.text?.removeAll()
        readOnly()
    }

    func readOnly(){
        tfAddition.isUserInteractionEnabled = false
        tfSubtraction.isUserInteractionEnabled = false
        tfMultiplication.isUserInteractionEnabled = false
        tfQuotient.isUserInteractionEnabled = false
        tfRemainder.isUserInteractionEnabled = false
    }
    
    // 아무곳이나 눌러 softkeyboard 지우기
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    @IBAction func btnCalc(_ sender: UIButton) {
        guard let strNum1 = tfNum1.text else {return}
        guard let strNum2 = tfNum2.text else {return}
        let num1Check: Int = checkNil(strNum1)
        let num2Check: Int = checkNil(strNum2)
        
        if num1Check + num2Check != 2 {
            lblMessage.text = "숫자를 입력하세요"
        }else if strNum2 == "0"{
            lblMessage.text = "0으로 나눌 수 없습니다"
        }else{
            lblMessage.text = ""
            // ---------
            calculation(calcNum1: strNum1, calcNum2: strNum2)
            // ---------
            lblMessage.text = "계산이 완료되었습니다!"
            
        }
    }
    
    // 숫자 (str)가 있는지 판단해서 0 or 1 (int) return
    func checkNil(_ str:String) -> Int{
        let check = str.trimmingCharacters(in: .whitespaces)
        // if check.count == 0{
        // }
        if check.isEmpty{
            return 0
        } else {
            return 1
        }
    }
    
    func calculation(calcNum1:String, calcNum2:String){
        let intNum1: Int = Int(calcNum1)!
        let intNum2: Int = Int(calcNum2)!
        if intNum2 == 0{
            tfAddition.text = String(intNum1+intNum2)
            tfSubtraction.text = String(intNum1-intNum2)
            tfMultiplication.text = String(intNum1*intNum2)
            tfQuotient.text = String(intNum1/intNum2)
            tfRemainder.text = String(intNum1%intNum2)
        }
    }
    
    
}

