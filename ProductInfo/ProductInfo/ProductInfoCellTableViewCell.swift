//
//  ProductInfoCellTableViewCell.swift
//  ProductInfo
//
//  Created by 이영진 on 2023/04/03.
//

import UIKit

class ProductInfoCellTableViewCell: UITableViewCell {

    @IBOutlet weak var productLabel: UILabel!
    @IBOutlet weak var productImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
