//
//  ItemsList.swift
//  PayWithWeAccept
//
//  Created by huda elhady on 6/21/19.
//  Copyright © 2019 huda.elhady. All rights reserved.
//

import UIKit

class ItemsList: UIViewController {
    
    @IBOutlet weak var listTitle: UILabel!
    @IBOutlet weak var itemsTable: UITableView!
    @IBOutlet weak var confirmButton: UIButton!
    
    var items = Item()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        update()
    }
    
    func update() {
        self.itemsTable.reloadData()
    }
    
    func updateSelection(indexPath: IndexPath) {
        let item = self.items.wannabe[indexPath.row]
        items.updateSelection(packageItem: item)
        update()
    }
    
    @IBAction func proceedButtonAction(_ sender: UIBarButtonItem) {
        
    }
}

extension ItemsList: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.wannabe.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var identifier = ""
        let item = self.items.wannabe[indexPath.row]
        if items.isSelected(item) != nil {
             identifier = "itemSelectedCell"
        }else{
            identifier = "itemNotSelectedCell"
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as? ItemCell
        cell?.configure(itemName: item.itemName, price: item.price)
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        updateSelection(indexPath: indexPath)
    }
}
