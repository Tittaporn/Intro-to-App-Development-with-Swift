import UIKit
import GameplayKit

var str = "Hello, playground"

enum GameState {
    case start, win, lose, draw
}


let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)
randomChoice.nextInt()

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
      //  var gameState: GameState
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

var myTurn = Sign.scissors
var oppentTurn  = randomSign()

myTurn.checkGameState(opponentSign: oppentTurn)

