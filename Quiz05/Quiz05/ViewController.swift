//
//  ViewController.swift
//  Quiz05
//
//  Created by 이영진 on 2023/02/14.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var tfDan: UITextField!
    
    @IBOutlet weak var tfResult: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tfResult.isEditable = false
        
    }

    
    @IBAction func btnDan(_ sender: UIButton) {
        var result = ""
        guard let dan = tfDan.text?.trimmingCharacters(in: .whitespacesAndNewlines) else {return}
        
        for i in 1...9{
            result = "\(dan)X\(i)=\(Int(dan)!*i)\n"
            tfResult.text += result
        }
        
    }
    // 아무곳이나 눌러 softkeyboard 지우기
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    

}

