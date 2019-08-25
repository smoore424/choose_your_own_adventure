//
//  ViewController.swift
//  CYOA
//
//  Created by Stacey on 8/14/19.
//  Copyright © 2019 Stacey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func readStory(_ sender: UIButton) {
        navigationController?.pushViewController(StoryViewController(), animated: false)
    }
    
}

