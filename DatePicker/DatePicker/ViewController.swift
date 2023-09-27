//
//  ViewController.swift
//  DatePicker
//
//  Created by 이영진 on 2023/02/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblCurrentTime: UILabel!
    @IBOutlet weak var lblPickerTime: UILabel!
    
    let interval = 1.0 // 시간 간격 1초
    let timeSelector: Selector = #selector(ViewController.updateTime)
    // swift에서 selector 사용: 시간, 터치스크린 등
    
    
    var count = 0 // 알람 (빨강/파랑 배경 반복)을 위한 변수
    var alarmTime: String? // changeDatePicker의 시간을 updateTime이 알도록 (비교할 수 있도록)하기 위한 변수
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblPickerTime.text = ""
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
        // selector: obj c에서 함수 선택, 사용할 때 사용
        // Timer: interval마다 한 번씩 timeSelector -> updateTime 함수 자동 실행시켜줌
    }
    
    
    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "ko")
        formatter.dateFormat = "yyyy-MM-dd EEE a hh:mm:ss"
        lblPickerTime.text = "선택시간: \(formatter.string(from: datePickerView.date))"
        // string이므로 비교연산 가능 (ex. 설정시간이 현재랑 같으면 => 알람)
        
        // 알람
        formatter.dateFormat = "a hh:mm" // 위에서 날짜 요일 시간으로 받아온 시간을 오전/오후, 시, 분만 표시되도록 포맷팅
        alarmTime = formatter.string(from: datePickerView.date)
        
    }
    
    // obj c 형식으로 바꿔줌: @objc
    @objc func updateTime(){
        // 시간표시 (미국 기준)
        // NSDate도 obj c type임
        let date = NSDate()
        // 한국 시간으로 포매팅
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "ko")
        formatter.dateFormat = "yyyy-MM-dd EEE a hh:mm:ss"
        // 24시 표시: 대문자 HH:
        lblCurrentTime.text = "현재시간: \(formatter.string(from: date as Date))"
        
        
        
        formatter.dateFormat = "a hh:mm"
        let currentTime = formatter.string(from: date as Date)
        
        if alarmTime == currentTime{
            if count % 2 == 0{
                view.backgroundColor = .red
            }else{
                view.backgroundColor = .blue
            }
        }else{
            view.backgroundColor = .white
        }
        
        
    }
    
    
    
    
    

}

