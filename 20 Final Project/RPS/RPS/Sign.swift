//
//  Sign.swift
//  RPS
//
//  Created by Lee McCormick on 12/31/20.
//

import Foundation
import GameplayKit

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

func randomSign() -> Sign {
    let sign = randomChoice.nextInt()
    if sign == 0 {
        return .rock
    } else if sign == 1 {
        return .paper
    } else {
        return .scissors
    }
}

enum Sign {
    case rock, paper, scissors
    
    var emoji: String {
        switch self {
        case .rock:
            return "👊"
        case .paper:
            return "🖐"
        case .scissors:
            return "✌️"
        }
    }
    
    func checkGameState(opponentSign: Sign) -> GameState {
     
        if self == opponentSign {
            return GameState.draw
            
        } else if self == .rock && opponentSign == .paper {
            return GameState.lose
        } else if self == .rock && opponentSign == .scissors {
            return GameState.win
            
        } else if self == .paper && opponentSign == .rock {
            return GameState.win
        } else if self == .paper && opponentSign == .scissors {
            return GameState.lose
            
        } else if self == .scissors  && opponentSign == .rock {
            return GameState.lose
        } else if self == .scissors  && opponentSign == .paper {
            return GameState.win
            
        } else {
            return GameState.start
        }
    }
}

