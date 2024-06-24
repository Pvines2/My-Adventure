//
//  ViewController.swift
//  MyAdventure
//
//  Created by Parker Vines on 6/18/24.
//
// ViewController.swift
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    var storyController = StoryController()

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        storyController.nextStory(userChoice: sender.currentTitle!)
        updateUI()
    }

    func updateUI() {
        storyLabel.text = storyController.getStoryTitle()
        choice1Button.setTitle(storyController.getChoice1(), for: .normal)
        choice2Button.setTitle(storyController.getChoice2(), for: .normal)
        backgroundImageView.image = UIImage(named: storyController.getBackgroundImageName())
    }
}




