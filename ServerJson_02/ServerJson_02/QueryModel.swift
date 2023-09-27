//
//  QueryModel.swift
//  ServerJson_02
//
//  Created by 이영진 on 2023/02/18.
//

import Foundation

protocol QueryModelProtocol{
    func itemDownloaded(items: [DBModel])
    
}

class QueryModel{
    var delegate: QueryModelProtocol!
    let urlPath = "https://zeushahn.github.io/Test/ios/student.json"
    
    func downloadItems(){
        let url: URL = URL(string: urlPath)!
        
        DispatchQueue.global().async {
            let data = try? Data(contentsOf: url)
            // json->dbmodel parsing
            DispatchQueue.main.async {
                self.parseJSON(data!)
            }
        }
    }
    
    func parseJSON(_ data:Data){
        let decoder = JSONDecoder()
        var locations: [DBModel] = []
        
        do{
            let students = try decoder.decode([StudentJSON].self, from: data)
            for student in students {
                let query = DBModel(scode: student.code, sname: student.name, sphone: student.phone, sdept: student.dept)
                locations.append(query)
            }
            print(students.count)
        }catch let error{
            print("Fail : \(error.localizedDescription)")
        }
        DispatchQueue.main.async {
            self.delegate.itemDownloaded(items: locations)
        }
        
    }
    
    
}
