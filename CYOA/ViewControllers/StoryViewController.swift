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
    
    var currentIndex = PageID.pageID
    let defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()

        loadPage()
        saveProgress()
        storyText.sizeToFit()
    }
    
    func loadPage() {
        
        let currentPage = story[currentIndex.currentIndex]
        storyText.text = currentPage.text
        button1.setTitle(currentPage.button1Text, for: .normal)
        button2.setTitle(currentPage.button2Text, for: .normal)
        button3.setTitle(currentPage.button3Text, for: .normal)
        button4.setTitle(currentPage.button4Text, for: .normal)
    }

    @IBAction func buttonPressed(_ sender: UIButton) {

        let currentPage = story[currentIndex.currentIndex]
        let rollTheDice = currentPage.rollTheDice
        
        if sender == button1 {
            if rollTheDice == true {
                print("rolling the dice")
                diceRoll()
                //diceRoll will return true or false, will need another if statement for each page to go to depending on outcome.
                //will need to adjust traits accordingly.
            } else {
               currentIndex.currentIndex = currentPage.button1Action
            }
            
        } else if sender == button2 {
            currentIndex.currentIndex = currentPage.button2Action
        } else if sender == button3 {
            currentIndex.currentIndex = currentPage.button3Action
        } else if sender == button4 {
            currentIndex.currentIndex = currentPage.button4Action
        }
        
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
        
        defaults.set(currentIndex.currentIndex, forKey: "PageID")
    }
    
    func findCurrentIndex() -> Int {
        if defaults.object(forKey: "PageID") != nil {
            return defaults.integer(forKey: "PageID")
        } else {
            return 0
        }
    }

}
