//
//  ViewController.swift
//  Quiz08
//
//  Created by 이영진 on 2023/02/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    var numImage = 0
    var imageName = ["flower_01.png","flower_02.png",
                     "flower_03.png",
                     "flower_04.png",
                     "flower_05.png",
                     "flower_06.png",]
    
    var interval = 0.5
    
    var timeSelector: Selector = #selector(ViewController.updateTime)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        display()
        
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
        
    }

    @objc func updateTime(){
        numImage += 1
        if numImage >= imageName.count{
            numImage = 0
        }
        
        display()
        
    }
    
    func display(){
        imgView.image = UIImage(named: imageName[numImage])
        lblTitle.text = imageName[numImage]
    }
    
}

