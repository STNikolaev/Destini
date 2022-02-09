//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var story = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBAction func choiceButtonAction(_ sender: UIButton) {
        let userChoice = sender.currentTitle!
        story.nextStory(userChoice)
        updateUI()
    }
    
    @objc func updateUI() {
        let choice1 = story.getchoice1()
        choice1Button.setTitle(choice1, for: .normal)
        let choice2 = story.getchoice2()
        choice2Button.setTitle(choice2, for: .normal)
        storyLabel.text = story.getStory()
    }
}

