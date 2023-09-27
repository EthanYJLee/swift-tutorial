//
//  ViewController.swift
//  ButtonName
//
//  Created by 이영진 on 2023/02/09.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblSmile: UILabel!
    
    let smile1: String = "👶"
    let smile2: String = "👨"
    let smile3: String = "👴🏿"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblSmile.text = ""
        view.backgroundColor = .green
    }
    
    @IBAction func btnSmile1(_ sender: UIButton) {
        lblSmile.text! += smile1
        // optional value: nil data 처리 (!)
        // forced unwrapping
        view.backgroundColor = .red
    }
    
    @IBAction func lblSmile2(_ sender: UIButton) {
        lblSmile.text?.append(smile2)
        // swift의 문자열: 배열 (ex. java의 char, Str)
        view.backgroundColor = .blue
    }
    
    @IBAction func lblSmile3(_ sender: UIButton) {
        lblSmile.text?.append(smile3)
        view.backgroundColor = .yellow
    }
    
    
}

// auto layout: safe area 기준으로 상하좌우 픽셀 지정
