//
//  CustomCollectionViewCell.swift
//  Test
//
//  Created by jiad abdul on 17/12/2019.
//  Copyright © 2019 Marcus Florentin. All rights reserved.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {
    var category: Category!
    @IBOutlet weak var itemCollection: ItemCollectionView!
	@IBOutlet weak var categoryLabel: UILabel!
}
