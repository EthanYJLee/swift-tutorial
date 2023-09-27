//
//  Calculation.swift
//  TextFieldSwitchCalc
//
//  Created by 이영진 on 2023/02/14.
//

import Foundation

class Calculation{
    
    func calc(num1:String,num2:String)->Array<Double>{
        
        
        let anum = Int(num1) ?? 0
        let bnum = Int(num2) ?? 0
        
        let resultAdd = Double(anum + bnum)
        let resultSub = Double(anum - bnum)
        let resultMul = Double(anum * bnum)
        let resultDiv = Double(anum / bnum)
        
        let answer:Array<Double> = [resultAdd,resultSub,resultMul,resultDiv]
        return answer
        
    }
    
}
