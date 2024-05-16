//
//  Model.swift
//  Testing timer app
//
//  Created by Arshad Buchori on 16/05/24.
//

import Foundation

struct GameState {
    enum GameCase {
        case ongoing
        case win
        case lose
    }
    
    var currentGameState: GameCase = .ongoing
}

struct GameTime {
    var remainingTime: TimeInterval
}

struct PlayerState {
    enum PlayerCase {
        case stayStill
        case run
    }
    
    var currentPlayerState: PlayerCase = .run
}
