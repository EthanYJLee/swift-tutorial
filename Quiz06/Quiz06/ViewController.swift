//
//  ViewController.swift
//  Quiz06
//
//  Created by 이영진 on 2023/02/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgTitle: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var img2View: UIImageView!
    @IBOutlet weak var prevButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    var imageName = ["flower_01.png","flower_02.png","flower_03.png","flower_04.png","flower_05.png","flower_06.png"]
    
    var numImage = 0
    var num2Image = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        displayImage()
    }

    @IBAction func buttons(_ sender: UIButton) {
        // 버튼 두 개 연결
        if sender == prevButton{
            numImage -= 1
            num2Image -= 1
            if numImage < 0{
                numImage = imageName.count - 1
            }
            if num2Image < 0{
                num2Image = imageName.count - 1
            }
            
        }else{
            numImage += 1
            num2Image += 1
            if numImage >= imageName.count{
                numImage = 0
            }
            if num2Image >= imageName.count{
                num2Image = 0
            }
            
        }
            displayImage()
        
        
    }
    
    
    func displayImage(){
        // title
        imgTitle.text = imageName[numImage]
        
        // image
        imgView.image = UIImage(named: imageName[numImage])
        
        img2View.image = UIImage(named: imageName[num2Image])
    }
    
    
}


