//
//  ViewController.swift
//  ProductInfo
//
//  Created by 이영진 on 2023/04/03.
//

import UIKit

class ViewController: UIViewController {
    let productNames = ["1","2","3"]

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        tableView.delegate = self
        tableView.dataSource = self
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let nibName = UINib(nibName: "ProductInfoCellTableViewCell", bundle: nil)
        tableView.register(nibName, forCellReuseIdentifier: "productCell")
    }

   
}
extension ViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productNames.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "productCell", for: indexPath) as! ProductInfoCellTableViewCell
        cell.productLabel.text = productNames[indexPath.row]
        cell.productLabel.sizeToFit()

    return cell
    }
}

