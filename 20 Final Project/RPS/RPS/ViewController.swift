//
//  ViewController.swift
//  RPS
//
//  Created by Lee McCormick on 12/31/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var appSignLabel: UILabel!
    @IBOutlet var statusGameLabel: UILabel!
    @IBOutlet var playRockButton: UIButton!
    @IBOutlet var playPaperButton: UIButton!
    @IBOutlet var playScissorsButton: UIButton!
    @IBOutlet var playAgainButton: UIButton!
    
    var statusGame: GameState = .start
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
        playAgainButton.layer.cornerRadius = 10
        playAgainButton.clipsToBounds = true
        statusGameLabel.textAlignment = .center
    }
    
    func updateView() {
        statusGameLabel.text = statusGame.text
        view.backgroundColor = statusGame.color
    
        if statusGame == GameState.start {
            appSignLabel.text = "🤖"
            playAgainButton.isHidden = true
            playRockButton.isEnabled = true
            playPaperButton.isEnabled = true
            playScissorsButton.isEnabled = true
            playRockButton.isHidden  = false
            playPaperButton.isHidden = false
            playScissorsButton.isHidden  = false
        }
    }
    
    @IBAction func playAgainTapped(_sender: Any){
        statusGame = GameState.start
        updateView()
    }
    
    
    @IBAction func playRockTapped(_sender: Any){
        
        let playerSign = Sign.rock
        statusGame = play(sign: playerSign)
        
        playPaperButton.isHidden = true
        playScissorsButton.isHidden = true
        
        updateView()
    }
    
    @IBAction func playPaperTapped(_sender: Any){
        
        let playerSign = Sign.paper
        statusGame = play(sign: playerSign)
        
        playRockButton.isHidden = true
        playScissorsButton.isHidden = true
        
        updateView()
    }
    
    @IBAction func playScisscorTapped(_sender: Any){
        
        let playerSign = Sign.scissors
        statusGame = play(sign: playerSign)
        playRockButton.isHidden = true
        playPaperButton.isHidden = true
        
        updateView()
    }
    
    func play(sign: Sign) -> GameState {
        
        let appSign: Sign = randomSign()
        statusGame = sign.checkGameState(opponentSign: appSign)
        appSignLabel.text = appSign.emoji
        playRockButton.isEnabled = false
        playPaperButton.isEnabled = false
        playScissorsButton.isEnabled = false
        playAgainButton.isHidden = false
       
        return statusGame
    }
}

