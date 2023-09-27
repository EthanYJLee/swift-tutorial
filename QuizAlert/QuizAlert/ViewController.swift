//
//  ViewController.swift
//  QuizAlert
//
//  Created by 이영진 on 2023/02/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    let imageName = "lamp_on.png"
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView.image = UIImage(named: imageName)
        
    }


    @IBAction func btnOn(_ sender: UIButton) {
        let onAlert = UIAlertController(title: "", message: "", preferredStyle: .alert)
        
        if imageName == "lamp_on.png"{
            onAlert.title = "경고"
            onAlert.message = "현재 On 상태입니다."
            let onAction = UIAlertAction(title: "네, 알겠습니다", style: .default)
            onAlert.addAction(onAction)
            present(onAlert,animated: true)
        }else{
            onAlert.title = "램프 켜기"
            onAlert.message = "램프를 켜겠습니까?"
            let onAction1 = UIAlertAction(title: "네", style: .default)
            let onAction2 = UIAlertAction(title: "아니오", style: .default)
            onAlert.addAction(onAction1)
            onAlert.addAction(onAction2)
            present(onAlert,animated: true)
            
        }
        
        
        
        
    }
    
    
    @IBAction func btnOff(_ sender: UIButton) {
        
        let offAlert = UIAlertController(title: "", message: "", preferredStyle: .alert)
        
        if imageName == "lamp_off.png"{
            offAlert.title = "경고"
            offAlert.message = "현재 Off 상태입니다."
            let onAction = UIAlertAction(title: "네, 알겠습니다", style: .default)
            offAlert.addAction(onAction)
            present(offAlert,animated: true)
        }else{
            offAlert.title = "램프 끄기"
            offAlert.message = "램프를 끄겠습니까?"
            let onAction1 = UIAlertAction(title: "네", style: .default)
            let onAction2 = UIAlertAction(title: "아니오", style: .default)
            offAlert.addAction(onAction1)
            offAlert.addAction(onAction2)
            
            present(offAlert,animated: true)
            
            
        }
        
        
    }
    
    
    
}

