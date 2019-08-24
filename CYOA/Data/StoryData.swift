//
//  Story.swift
//  CYOA
//
//  Created by Stacey on 8/14/19.
//  Copyright © 2019 Stacey. All rights reserved.
//

import Foundation

let trait = Traits.trait

var story = [
    StoryModel(id: 0, text: "This is page 0", rollTheDice: true, button1Text: "Go to page 1", button1action: 1, diceRoll1: [trait.charisma], button2text: "Go to Page 2", button2Action: 2, button3Text: "Go to page 3", button3Action: 3, button4Text: "Go to Page 4", button4Action: 4),
    StoryModel(id: 1, text: "This is page 1", rollTheDice: true, button1Text: "Go back to page 0", button1action: 0, diceRoll1: [trait.combat, trait.diplomacy], button2text: "Go to Page 2", button2Action: 2, button3Text: "Go to Page 3", button3Action: 3, button4Text: "Go to page 4", button4Action: 4),
    StoryModel(id: 2, text: "This is page 2", rollTheDice: false, button1Text: "Go to page 0", button1action: 0, diceRoll1: [0], button2text: "Go to page 1", button2Action: 1, button3Text: "Go to page 3", button3Action: 3, button4Text: "Go to page 4", button4Action: 4),
    StoryModel(id: 3, text: "This is page 3", rollTheDice: false, button1Text: "Go to page 1", button1action: 1, diceRoll1: [0], button2text: "Go to page 2", button2Action: 2, button3Text: "Go to page 3", button3Action: 3, button4Text: "Go to page 4", button4Action: 4),
    StoryModel(id: 4, text:
        """
        This is page 4 and this is the real test, because I need to see how adding a large amount of data will affect not only the label size, but button positions and scrolling affect.  I also want to test how the data entry of the story will look on the StoryData screen.  If I can lay it out in such a way that it will be easy to follow, find and fix an error, and just in general terms look good.  I am going to keep typing because I imagine that Lindsey and Kelsey both want to have many lines of text in each page. They are also going to want to format it like a book, so paragraphs, quotes, new lines, etc.  This will be a TODO for me to find out how to format this in XCODE.  I think I can just do \n and that will create a new line for me.  This however means that I will have a lot more data entry work than I originally thought as I will have to make sure formating is the way they intended.  This being said, I need to ask if I can have sections of the book as they are finished and then set a goal of inputting 1 or 2 pages every day.  If Lindsey and Kelsey get ahead of me with the writing I will have to increase the number of pages I input everyday.  \n THE KEY IS TO NOT GET BURNT OUT! \n another key is to keep typing, this amount of text does not go off the screen yet \n I am going to need to develop a complete testing program for this.\n I don't understand what I am doing with this scroll view stuff :(
        """,
               rollTheDice: false, button1Text: "Go to page 0", button1action: 0, diceRoll1: [0], button2text: "Go to page 1", button2Action: 1, button3Text: "Go to page 2", button3Action: 2, button4Text: "Go back to page 3", button4Action: 3)
]
