//
//  storyModel.swift
//  CYOA
//
//  Created by Stacey on 8/14/19.
//  Copyright © 2019 Stacey. All rights reserved.
//

import UIKit

class StoryModel {
    
    //id = page number
    var id: Int
    //text is the story
    var text: String
    //button text is the choice player will make
    var rollTheDice: Bool
    
    var button1Text: String
    //the number associated with the button action is the next page that will present.
    var button1Action: Int
    var diceRoll1: [Int]
    
    var button2Text: String
    var button2Action: Int
    
    var button3Text: String
    var button3Action: Int
    
    var button4Text: String
    var button4Action: Int
    
    init(id: Int, text: String, rollTheDice: Bool, button1Text: String, button1action: Int, diceRoll1: [Int], button2text: String, button2Action: Int, button3Text: String, button3Action: Int, button4Text: String, button4Action: Int) {
        self.id = id
        self.text = text
        self.rollTheDice = rollTheDice
        self.button1Text = button1Text
        self.button1Action = button1action
        self.diceRoll1 = diceRoll1
        self.button2Text = button2text
        self.button2Action = button2Action
        self.button3Text = button3Text
        self.button3Action = button3Action
        self.button4Text = button4Text
        self.button4Action = button4Action
    }
}
