//
//  TableViewFooter.swift
//  CYOA
//
//  Created by Stacey on 9/2/19.
//  Copyright © 2019 Stacey. All rights reserved.
//

import UIKit

class TableViewFooter: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder: ) has not been implemented")
    }
    
    private func setView() {
        let footer = UIView()
        footer.backgroundColor = .red
        footer.frame = CGRect(x: 0, y: 0, width: 38, height: 25)
        
    }
}
