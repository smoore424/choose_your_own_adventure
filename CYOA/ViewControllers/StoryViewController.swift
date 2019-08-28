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
    
//    var currentIndex = PageID.pageID
    var currentIndex = 0
    
    let defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        findCurrentIndex()
        loadPage()
        storyText.sizeToFit()
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
        let rollTheDice = currentPage.rollTheDice
        
        if sender == button1 {
            if rollTheDice == true {
                print("rolling the dice")
                diceRoll()
                //diceRoll will return true or false, will need another if statement for each page to go to depending on outcome.
                //will need to adjust traits accordingly.
            } else {
               currentIndex = currentPage.button1Action
            }
        } else if sender == button2 {
            currentIndex = currentPage.button2Action
        } else if sender == button3 {
            currentIndex = currentPage.button3Action
        } else if sender == button4 {
            currentIndex = currentPage.button4Action
        }
        saveProgress()
        loadPage()
    }
    
    func diceRoll() {
        //trait(s) passed into function
        //can I write one function that will accept a varying number of traits?
        //"win" condition passed into function
        //return true or false based on if won.
        print("dice rolled")
    }
    
    func saveProgress() {
        defaults.set(currentIndex, forKey: "PageID")
    }
    
    func findCurrentIndex() {
        if defaults.object(forKey: "PageID") != nil {
            currentIndex = defaults.integer(forKey: "PageID")
        } else {
            currentIndex = 0
        }
    }

}
