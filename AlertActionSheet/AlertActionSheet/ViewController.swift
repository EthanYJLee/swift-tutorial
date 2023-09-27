//
//  ViewController.swift
//  AlertActionSheet
//
//  Created by 이영진 on 2023/02/16.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

   
    @IBAction func btnAlert(_ sender: UIButton) {
        // Controller
        let testAlert = UIAlertController(title: "Title", message: "Message", preferredStyle: .alert)
        
        
        
        // Button
        let actionDefault = UIAlertAction(title: "Action Default", style: .default)
        let actionDestructive = UIAlertAction(title: "Action Destructive", style: .destructive, handler: {ACTION in
            print("destructive action called")
        })
        let actionCancel = UIAlertAction(title: "Action Cancel", style: .cancel)
        
        // Controller에 Button 추가
        testAlert.addAction(actionDefault)
        testAlert.addAction(actionDestructive)
        testAlert.addAction(actionCancel)
        
        present(testAlert,animated: true)
        
    }
    
    @IBAction func btnActionSheet(_ sender: UIButton) {
        
        
    }
}

