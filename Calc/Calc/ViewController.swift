//
//  ViewController.swift
//  Calc
//
//  Created by 이영진 on 2023/02/14.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tfNum1: UITextField!
    @IBOutlet weak var tfNum2: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    @IBAction func btnAdd(_ sender: UIButton) {
        let calculation = Calculation()
        
        
//        guard let num1 = tfNum1.text else {return}
//        guard let num2 = tfNum2.text else {return}
        
        let num1 = tfNum1.text ?? "0"
        let num2 = tfNum2.text ?? "0"
        
        let result = calculation.add(숫자1: num1, 숫자2: num2)
        lblResult.text = "덧셈 결과는 \(result)입니다."
    }
    
    @IBAction func btnClear(_ sender: UIButton) {
        tfNum1.text?.removeAll()
        tfNum2.text?.removeAll()
        lblResult.text?.removeAll()
    }
    
    
}



