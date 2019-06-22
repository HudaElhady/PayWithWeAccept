//
//  item.swift
//  PayWithWeAccept
//
//  Created by huda elhady on 6/21/19.
//  Copyright © 2019 huda.elhady. All rights reserved.
//

import Foundation

struct PackageItem {
    var itemName: String
    var price: Double
}

class Item {
    var wannabe: [PackageItem]!
    var selected: [PackageItem]!
    
    init() {
        wannabe = [PackageItem(itemName: "Book",price: 50), PackageItem(itemName: "Spoon", price: 38.5), PackageItem(itemName: "Chair", price: 300)]
        selected = []
    }
    
    func isSelected(_ packageItem: PackageItem) -> Int? {
        if let index = (self.selected?.index { (wannabePassenger) -> Bool in
            wannabePassenger.itemName == packageItem.itemName
            }) {
            return index
        } else {
            return nil
        }
    }
    
    func updateSelection(packageItem: PackageItem) {
        
        if let index = isSelected(packageItem) {
            self.selected.remove(at: index)
        } else {
            self.selected.append(packageItem)
        }
    }
}
