//
//  ViewController.swift
//  ImageView
//
//  Created by 이영진 on 2023/02/14.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var btnResize: UIButton!
    
    var isZoom = false  // 이미지 확대 여부
    
    var imgOn: UIImage? // 켜진 전구 이미지
    var imgOff: UIImage? // 꺼진 전구 이미지
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // 이미지 연결
        imgOn = UIImage(named: "lamp_on.png")
        imgOff = UIImage(named: "lamp_off.png")
        imgView.image = imgOn
    }
    
    @IBAction func btnResizeImage(_ sender: UIButton) {
        // 이미지 크기를 두 배로 늘리기/줄이기
        let scale: CGFloat = 2.0
        var newWidth: CGFloat?
        var newHeight: CGFloat?
        
        if isZoom{
            newWidth = imgView.frame.width / scale
            newHeight = imgView.frame.height / scale
            btnResize.setTitle("Image 확대", for: .normal)
        }else{
            newWidth = imgView.frame.width * scale
            newHeight = imgView.frame.height * scale
            btnResize.setTitle("Image 축소", for: .normal)
        }
        imgView.frame.size = CGSize(width: newWidth!, height: newHeight!)
        isZoom = !isZoom
        
    }
    
    
    @IBAction func switchImageOnOff(_ sender: UISwitch) {
//        if sender.isOn{
//            imgView.image = imgOn
//        }else{
//            imgView.image = imgOff
//        }
        switch sender.isOn{
        case true:
            imgView.image = imgOn
            // swift는 break가 자동으로 설정
        default:
            imgView.image = imgOff
        
        }
            
        
    }
    
}

