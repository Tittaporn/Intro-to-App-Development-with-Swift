//
//  GameState.swift
//  RPS
//
//  Created by Lee McCormick on 12/31/20.
//

import Foundation
import UIKit

enum GameState {
    case start, win, lose, draw
    
    var text: String{
        switch self {
        case .start:
            return "Let's Play RPS Game! \nRock! Paper! Scissors!"
        case .win:
            return "You Won! \nCongratulation Winner!"
        case .lose:
            return "You Lost! \nDon't give up! Loser!"
        case .draw:
            return "It was a Tie Game.\nTry again!"
        }
    }
    
    var color: UIColor {
        switch self {
        case .start:
            return UIColor.gray
        case .win:
            return UIColor.systemBlue
        case .lose:
            return UIColor.systemPink
        case .draw:
            return UIColor.systemGreen
        }
    }
}
