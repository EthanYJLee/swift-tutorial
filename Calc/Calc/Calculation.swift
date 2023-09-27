//
//  Calculation.swift
//  Calc
//
//  Created by 이영진 on 2023/02/14.
//

import Foundation

class Calculation{
    // Field or Property
    // Constructor
    // Function
    
//    func add(_ num1:String,  _ num2:String){
        // _ : parameter 안 보이게
    
    func add(숫자1 num1: String, 숫자2 num2:String) -> Int{
        
//        guard let anum = num1 else {return}
//        guard let bnum = num2 else {return}
        
        let anum = Int(num1) ?? 0
        let bnum = Int(num2) ?? 0
        return anum + bnum
    }

}
