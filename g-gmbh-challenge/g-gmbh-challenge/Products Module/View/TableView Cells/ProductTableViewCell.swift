//
//  ProductTableViewCell.swift
//  g-gmbh-challenge
//
//  Created by Omar Samir on 2/12/19.
//  Copyright © 2019 Omar Samir. All rights reserved.
//

import UIKit

class ProductTableViewCell: UITableViewCell {
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var itemTitle: UILabel!
    @IBOutlet weak var itemPrice: UILabel!
    var product: Product!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
