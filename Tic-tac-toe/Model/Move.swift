//
//  Move.swift
//  Tic-tac-toe
//
//  Created by Oleg Zhovtanskyi on 19/11/2023.
//

import Foundation

struct Move {
    let player: Player
    let boardIndex: Int
    
    var indicator: String {
        return player == .human ? "xmark" : "circle"
    }
}
