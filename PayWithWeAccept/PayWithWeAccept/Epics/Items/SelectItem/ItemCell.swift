//
//  ItemCell.swift
//  PayWithWeAccept
//
//  Created by huda elhady on 6/21/19.
//  Copyright © 2019 huda.elhady. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {
    
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var itemNameLabel: UILabel!
    
    func configure(itemName: String, price: Double) {
        itemNameLabel.text = itemName
        priceLabel.text = "\(price) EGP"
    }
    
}

class ItemSelectedCell: ItemCell {
    
}

