//
//  SectionsModel.swift
//  CYOA
//
//  Created by Stacey on 9/2/19.
//  Copyright © 2019 Stacey. All rights reserved.
//

import UIKit

class SectionModel {
    var sectionName: String
    var sectionItems: [String]
    var target: [String]
    
    init(sectionName: String, sectionItems: [String], target: [String]) {
        self.sectionName = sectionName
        self.sectionItems = sectionItems
        self.target = target
    }
}
