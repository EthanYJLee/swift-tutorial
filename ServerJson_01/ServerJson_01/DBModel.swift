//
//  DBModel.swift
//  ServerJson_01
//
//  Created by 이영진 on 2023/02/18.
//

import Foundation

class DBModel{
    var scode: String
    var sname: String
    var sphone: String
    var sdept: String
    
    init(scode: String, sname: String, sphone: String, sdept: String) {
        self.scode = scode
        self.sname = sname
        self.sphone = sphone
        self.sdept = sdept
    }
}
