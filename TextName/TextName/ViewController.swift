//
//  ViewController.swift
//  TextName
//
//  Created by 이영진 on 2023/02/09.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var lblWelcome: UILabel!
    @IBOutlet weak var tfName: UITextField!
    
    let welcomeString = "Welcome!"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblWelcome.text = welcomeString
        
    }

    @IBAction func btnSend(_ sender: UIButton) {
        //lblWelcome.text?.append(tfName.text!)
        guard let strName = tfName.text else {return}
        // 만약 nil이면 빠져나감
        lblWelcome.text?.append(strName)
    }
    
    @IBAction func btnClear(_ sender: UIButton) {
        lblWelcome.text = "Welcome"
        tfName.text = ""
    }
    
    // 아무곳이나 눌러 softkeyboard 지우기
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

