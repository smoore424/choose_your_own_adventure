//
//  TraitsModel.swift
//  CYOA
//
//  Created by Stacey on 9/8/19.
//  Copyright © 2019 Stacey. All rights reserved.
//

import Foundation

class TraitsTableModel {
    
    var sectionName: String
    var traitName: [String]
    var traitLevel: [Int]
    var traitMaxLevel: [Int]
    
    init (sectionName: String, traitName: [String], traitLevel: [Int], traitMaxLevel: [Int]) {
        self.sectionName = sectionName
        self.traitName = traitName
        self.traitLevel = traitLevel
        self.traitMaxLevel = traitMaxLevel
    }
}
