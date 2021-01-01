//
//  ViewController.swift
//  MemeMaker
//
//  Created by Lee McCormick on 12/31/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var topCaptionSegmentControl: UISegmentedControl!
    @IBOutlet var bottomCaptionSegmentControl: UISegmentedControl!
    @IBOutlet var topCaptionLabel: UILabel!
    @IBOutlet var bottomCaptionLabel: UILabel!
    
    var topChoices = [CaptionChoice]()
    var bottomChoices = [CaptionChoice]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topCaptionLabel.textAlignment = .center
        bottomCaptionLabel.textAlignment = .center
        
        setupTopChoices()
        setupTopSegment()
        setupBottomChioces()
        setupBottomSegment()
        
        updateLabel()
    }
    
    @IBAction func segmentSelected(_ sender: Any) {
        updateLabel()
    }
    
    
    
    func updateLabel() {
        let topIndex = topCaptionSegmentControl.selectedSegmentIndex
        let bottomIndex = bottomCaptionSegmentControl.selectedSegmentIndex
        
        let topChoice = topChoices[topIndex]
        let bottomChoice = bottomChoices[bottomIndex]
        
        topCaptionLabel.text = topChoice.caption
        bottomCaptionLabel.text = bottomChoice.caption
    }
    
    
    fileprivate func setupTopChoices() {
        let coolChioce = CaptionChoice(emoji: "🕶", caption: "You know, what is so cool?")
        let madChioce = CaptionChoice(emoji: "💥", caption: "You know, what make me mad?")
        let loveChioce = CaptionChoice(emoji: "💖", caption: "You know, what make me love?")
        let eatChioce = CaptionChoice(emoji: "🍔", caption: "You know, what ,make me hungry?")
        let devilChioce = CaptionChoice(emoji: "👿", caption: "You know, who is the devil?")
        let bikeChioce = CaptionChoice(emoji: "🚵🏻‍♂️", caption: "You know, why I ride, but you run?")
        let drumChioce = CaptionChoice(emoji: "🥁", caption: "You know, why I yell at you?")
        let ballChioce = CaptionChoice(emoji: "🏀", caption: "You know, why you look like a ball?")
        let presentChioce = CaptionChoice(emoji: "🎁", caption: "You know, why I got no presents?")
        let newYearChioce = CaptionChoice(emoji: "🎄", caption: "You know, why I wanna say Happy New Year?")
        
        topChoices = [coolChioce, madChioce, loveChioce, eatChioce, devilChioce, bikeChioce, drumChioce, ballChioce, presentChioce, newYearChioce]
    }
    
    fileprivate func setupBottomChioces() {
        
        let catChioce = CaptionChoice(emoji: "😻", caption: "Cats wearing hats.")
        let dogChioce = CaptionChoice(emoji: "🐶", caption: "Dog carrying logs.")
        let monkeyChioce = CaptionChoice(emoji: "🐵", caption: "Moneys being funky.")
        let cowChioce = CaptionChoice(emoji: "🐓", caption: "Chicken because I am a chicken")
        let horseChoice = CaptionChoice(emoji: "🎠", caption: "Hosting is hot.")
        let pigChoice = CaptionChoice(emoji: "🐷", caption: "Picking me, piggy.")
        let fishChoice = CaptionChoice(emoji: "🐠", caption: "Fishy being like fish.")
        
        bottomChoices = [catChioce, dogChioce, monkeyChioce, cowChioce, horseChoice, pigChoice, fishChoice]
    }
    
    fileprivate func setupTopSegment() {
        
        topCaptionSegmentControl.removeAllSegments()
        
        for choice in topChoices {
            topCaptionSegmentControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
        topCaptionSegmentControl.selectedSegmentIndex = 0
    }
    
    fileprivate func setupBottomSegment() {
        bottomCaptionSegmentControl.removeAllSegments()
        for choice in bottomChoices {
            bottomCaptionSegmentControl.insertSegment(withTitle: choice.emoji, at: bottomChoices.count, animated: false)
        }
        
        bottomCaptionSegmentControl.selectedSegmentIndex = 0
    }
    
}

