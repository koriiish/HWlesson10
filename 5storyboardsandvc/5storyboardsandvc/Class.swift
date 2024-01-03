//
//  Class.swift
//  5storyboardsandvc
//
//  Created by Карина Дьячина on 26.12.23.
//

import Foundation

class Pizza {
    var name: String?
    var ingredient1: String?
    var ingredient2: String?
    var ingredient3: String?
    
    init(name: String? = nil, ingredient1: String? = nil, ingredient2: String? = nil, ingredient3: String? = nil) {
        self.name = name
        self.ingredient1 = ingredient1
        self.ingredient2 = ingredient2
        self.ingredient3 = ingredient3
    }
}
