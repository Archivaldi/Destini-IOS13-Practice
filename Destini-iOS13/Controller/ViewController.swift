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
    
    var storyBrain = StoryBrain()

    @IBAction func choiceMade(_ sender: UIButton) {
        let userChoice = storyBrain.nextStory(sender.currentTitle!)
        updateUI(userChoice)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = storyBrain.stories[storyBrain.storyNumber].title
        choice1Button.setTitle(storyBrain.stories[storyBrain.storyNumber].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.stories[storyBrain.storyNumber].choice2, for: .normal)

    }

    func updateUI(_ userChoice: Int) {
        storyLabel.text = storyBrain.stories[userChoice].title
        choice1Button.setTitle(storyBrain.stories[userChoice].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.stories[userChoice].choice2, for: .normal)
    }

}

