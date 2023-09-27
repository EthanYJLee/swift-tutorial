//
//  ViewController.swift
//  ImageBMIPickerView
//
//  Created by 이영진 on 2023/02/18.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var height: [Int] = []
    var weight: [Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblResult.text = ""
        imageView.image = UIImage(named: "bmi.png")
        
        createData()
        pickerView.dataSource = self
        pickerView.delegate = self
        // picker view의 초기값 세팅
        pickerView.selectRow(60, inComponent: 0, animated: true)
        pickerView.selectRow(40, inComponent: 1, animated: true)
        
        
    }
    
    func createData(){
        for i in 100...200{
            height.append(i)
        }
        for i in 20...200{
            weight.append(i)
        }
    }


}

extension ViewController: UIPickerViewDataSource{
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0{
            return 101
        }else{
            return 181
        }
    }
    
}

extension ViewController: UIPickerViewDelegate{
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0{
            return String(height[row])
        } else{
            return String(weight[row])
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0{
            print(height[row])
        }else{
            print(weight[row])
        }
    }
}
