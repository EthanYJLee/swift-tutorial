//
//  QueryModel.swift
//  ServerJsonCardList
//
//  Created by 이영진 on 2023/02/19.
//

import Foundation

protocol QueryModelProtocol{
    func itemDownloaded(items: [DBModel])
    
}

class QueryModel{
    var delegate: QueryModelProtocol!
    let urlPath = "https://zeushahn.github.io/Test/ios/cards.json"
    
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
            let cards = try decoder.decode([ImageJSON].self, from: data)
            for card in cards {
                let query = DBModel(dbImage: card.image, dbCategory: card.category, dbHeading: card.heading, dbAuthor: card.author)
                locations.append(query)
            }
            print(cards.count)
        }catch let error{
            print("Fail : \(error.localizedDescription)")
        }
        DispatchQueue.main.async {
            self.delegate.itemDownloaded(items: locations)
        }
        
    }
    
    
}
