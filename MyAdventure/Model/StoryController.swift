// StoryController.swift
import Foundation

struct StoryController {
    var storyNumber = 0

    let stories = [
        Story(
            title: "You find a map to a long lost Jedi temple said to be home to ancient force knowledge. However, this map is hard to decode, it could take years to find the correct location. What do you do?",
            choice1: "Go alone", choice1Next: 2,
            choice2: "Tell your master", choice2Next: 1,
            backgroundImageName: "lost_jedi_temple"
        ),
        Story(
            title: "Your master decides to join you. He suggests that searching together is the best way. Do you...",
            choice1: "Search together", choice1Next: 3,
            choice2: "Split up", choice2Next: 4,
            backgroundImageName: "jedi_with_master"
        ),
        Story(
            title: "You arrive at the temple alone and find a powerful artifact. Do you...",
            choice1: "Take the Artifact directly to the Jedi Counsel", choice1Next: 5,
            choice2: "Inspect the Artifact for yourself", choice2Next: 6,
            backgroundImageName: "found_artifact"
        ),
        Story(
            title: "You find the artifact and continue training under your master, later becoming a Jedi legend.",
            choice1: "The End", choice1Next: 0,
            choice2: "Restart", choice2Next: 0,
            backgroundImageName: "use_for_good"
        ),
        Story(
            title: "You find the artifact. Do you...",
            choice1: "Tell your master you found it", choice1Next: 3,
            choice2: "Keep it a secret", choice2Next: 6,
            backgroundImageName: "found_artifact"
        ),
        Story(
            title: "You become a powerful Jedi. Gaining the trust of the council you are promoted to Jedi Master.",
            choice1: "The End", choice1Next: 0,
            choice2: "Restart", choice2Next: 0,
            backgroundImageName: "jedi_ceremony"
        ),
        Story(
            title: "The Artifact, full of knowledge and power, has made you become obsessed with learning its secrets. This lust for power has caused you to fall to the dark side.",
            choice1: "The End", choice1Next: 0,
            choice2: "Restart", choice2Next: 0,
            backgroundImageName: "use_for_evil"
        )
    ]

    func getStoryTitle() -> String {
        return stories[storyNumber].title
    }

    func getChoice1() -> String {
        return stories[storyNumber].choice1
    }

    func getChoice2() -> String {
        return stories[storyNumber].choice2
    }

    func getBackgroundImageName() -> String {
        return stories[storyNumber].backgroundImageName
    }

    mutating func nextStory(userChoice: String) {
        let currentStory = stories[storyNumber]
        if userChoice == currentStory.choice1 {
            storyNumber = currentStory.choice1Next
        } else if userChoice == currentStory.choice2 {
            storyNumber = currentStory.choice2Next
        }
    }
}


