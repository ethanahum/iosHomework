//
//  Sign.swift
//  RPS
//
//  Created by Administrateur on 18/11/2017.
//  Copyright © 2017 Administrateur. All rights reserved.
//

import GameplayKit
import Foundation

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

enum Sign {
    case rock
    case paper
    case scissors

var emojis: String {
    switch self {
    case .rock:
        return "👊"
    case .paper:
        return "✋"
    case .scissors:
        return "✌️"
}
}

func compare(opponentChoice:Sign) -> GameState {
    
   if self == .paper && opponentChoice == .rock {
        return GameState.win
    } else if self == .rock && opponentChoice == .paper {
        return GameState.lose
    } else if self == .scissors && opponentChoice == .paper {
        return GameState.win
    } else if self == .paper && opponentChoice == .scissors {
        return GameState.lose
    } else if self == .scissors && opponentChoice == .rock {
        return GameState.lose
    } else if self == .rock && opponentChoice == .scissors {
        return GameState.win
    }
    return GameState.draw
}
}

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
