//
//  ViewController.swift
//  Keyboard
//
//  Created by 이영진 on 2023/02/18.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func setKeyboardEvent(){
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillAppear(_ :)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillDisappear(_ :)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc func keyboardWillAppear(_ sender:NotificationCenter){
        self.view.frame.origin.y -= 150
        
    }
    
    @objc func keyboardWillDisappear(_ sender:NotificationCenter){
        self.view.frame.origin.y = 0.0
        
    }
    
    
}

