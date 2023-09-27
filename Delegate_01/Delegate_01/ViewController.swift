//
//  ViewController.swift
//  Delegate_01
//
//  Created by 이영진 on 2023/02/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfInput: UITextField!
    @IBOutlet weak var tfOutput: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tfOutput.text = ""
        
        // ViewController로 확장한 textFieldShouldReturn을 tfInput으로 전달
        tfInput.delegate = self
    }


    @IBAction func btnAction(_ sender: UIButton) {
        tfOutput.text = tfInput.text
        
    }
    
    // 아무곳이나 눌러 softkeyboard 지우기
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
} // ViewController

// java 상속 = swift 확장
// ViewController로 확장한다
extension ViewController: UITextFieldDelegate{
    // return을 눌렀을 때 btnAction과 같은 기능 실행
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        tfOutput.text = tfInput.text
        return true
    }
}



