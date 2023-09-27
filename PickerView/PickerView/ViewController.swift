//
//  ViewController.swift
//  PickerView
//
//  Created by 이영진 on 2023/02/16.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var pickerImage: UIPickerView!
    @IBOutlet weak var lblImageFileName: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    var imageFileName = ["w1.jpg","w2.jpg","w3.jpg","w4.jpg","w5.jpg","w6.jpg","w7.jpg","w8.jpg","w9.jpg","w10.jpg",]
    
    // viewDidLoad 실행 전에 imgView에 모든 이미지를 넣어놓기 위한 UIImage 배열
    var imageArray = [UIImage?]()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for i in 0..<imageFileName.count{
            let image = UIImage(named: imageFileName[i])
            imageArray.append(image)
        }
        lblImageFileName.text = imageFileName[0]
        imgView.image = imageArray[0]
        
        // extension으로 받아온 컬럼, 로우 갯수
        pickerImage.dataSource = self
        pickerImage.delegate = self
    }

    
    
    
    
} // ViewController

extension ViewController: UIPickerViewDataSource{
    // PickerView의 컬럼 갯수
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // PickerView의 Row 갯수
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imageFileName.count
    }
    
    
}

extension ViewController: UIPickerViewDelegate{
    // picker view에 파일명 배치 (titleForRow)
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        return imageFileName[row]
//    }
    
    // picker view에 thumbnail 배치 (viewForRow)
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let imageView = UIImageView(image: imageArray[row])
        imageView.frame = CGRect(x: 0, y: 0, width: 80, height: 50)
        return imageView
    }
    
    // 선택된 파일명을 이미지로 보여주기
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        lblImageFileName.text = imageFileName[row]
        imgView.image = imageArray[row]
    }
    
    // picker view row의 height 변경 (rowHeightForComponent)
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 60
    }
    
    
    
}
