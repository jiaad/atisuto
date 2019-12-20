//
//  Item.swift
//  Test
//
//  Created by jiad abdul on 16/12/2019.
//  Copyright © 2019 Marcus Florentin. All rights reserved.
//

import UIKit
var allItems : [Item] = []
struct Item: Codable {
    let id: Int
    let category: Category
    let title: String
    let author: String
    let picture: URL
    let date: Int
    var isFavoris: Bool = false
}

enum Category: String, Codable, CaseIterable {
     case BD = "BD"
     case MANGA = "Manga"
     case Litterature = "Litterature"
     case POESIE = "Poesie"
 }
