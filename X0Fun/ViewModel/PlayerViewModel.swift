//
//  PlayerViewModel.swift
//  X0Fun
//
//  Created by Aleksandr Gabrielyan on 02.05.22.
//

import Foundation

struct PlayerViewModel {
    let name: String
    var score: Int
    var isMyTurn: Bool
    var cards: [CardViewModel]?
}
