//
//  StoryViewController.swift
//  CYOA
//
//  Created by Stacey on 8/14/19.
//  Copyright © 2019 Stacey. All rights reserved.
//

import UIKit

class StoryViewController: UIViewController {

    @IBOutlet var storyText: UILabel!
    
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    @IBOutlet var button4: UIButton!
    
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadPage()
    }
    
    func loadPage() {
        let currentPage = story[currentIndex]
        storyText.text = currentPage.text
        button1.setTitle(currentPage.button1Text, for: .normal)
        button2.setTitle(currentPage.button2Text, for: .normal)
        button3.setTitle(currentPage.button3Text, for: .normal)
        button4.setTitle(currentPage.button4Text, for: .normal)
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        let currentPage = story[currentIndex]
        
        if sender == button1 {
            currentIndex = currentPage.button1Action
        } else if sender == button2 {
            currentIndex = currentPage.button2Action
        } else if sender == button3 {
            currentIndex = currentPage.button3Action
        } else if sender == button4 {
            currentIndex = currentPage.button4Action
        }
        
        loadPage()
    }
    

}
