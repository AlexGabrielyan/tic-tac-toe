//
//  PlayEngine.swift
//  X0Fun
//
//  Created by Aleksandr Gabrielyan on 02.05.22.
//

import Foundation

class PlayEngine {
    var firstPlayer: PlayerViewModel?
    var secondPlayer: PlayerViewModel?
    
    var onWin: ((PlayerViewModel?) -> Void)?
    
    init(firstPlayer: PlayerViewModel, secondPlayer: PlayerViewModel) {
        self.firstPlayer = firstPlayer
        self.secondPlayer = secondPlayer
    }
    
    func buttonPressed(tag: Int) {
        //Write logic tpo figure out whose turn is it
        //Create card and add to player cards
        print("tag \(tag) pressed")
        checkIfWin()
    }
    
    func checkIfWin() {
        onWin?(nil)
    }
    
}
