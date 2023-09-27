//
//  UpdateModel.swift
//  FirebaseList
//
//  Created by 이영진 on 2023/02/19.
//

import Foundation
import Firebase

class UpdateModel{
    let db = Firestore.firestore()
    
    func updateItems(documentId: String, code: String, name: String, dept: String, phone: String) -> Bool{
        var status: Bool = true
        db.collection("students").document(documentId).updateData([
            "code":code,
            "name":name,
            "dept":dept,
            "phone":phone
        ]){error in
            if error != nil{
                status = false
            }else{
                status = true
            }
            
        }
        return status
    }
}
