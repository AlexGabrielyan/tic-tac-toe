//
//  PlayEngine.swift
//  X0Fun
//
//  Created by Aleksandr Gabrielyan on 02.05.22.
//

import Foundation

enum Turn {
    case xik
    case oik
    case end
}

class PlayEngine {
    var firstPlayer: PlayerViewModel?
    var secondPlayer: PlayerViewModel?
    
    private var currentTurn = Turn.xik
    private var ZeroImageName = "oik"
    private var CrossImageName = "xik"
    private var cards: [CardViewModel]
    
    var onWin: ((PlayerViewModel?) -> Void)?
    
    init(firstPlayer: PlayerViewModel, secondPlayer: PlayerViewModel) {
        self.firstPlayer = firstPlayer
        self.secondPlayer = secondPlayer
        self.cards = [CardViewModel]()
        for index in (0...8) {
            let card = CardViewModel(isSelected: false,
                                     tag: index,
                                     selectedItemImageName: nil)
            cards.append(card)
        }
    }
    
    func buttonPressed(tag: Int) {
        //Write logic tpo figure out whose turn is it
        //Create card and add to player cards
        print("tag \(tag) pressed")
        
        checkIfWin()
    }
    
    func unselectedCards() -> [CardViewModel] {
        return cards.filter({ $0.isSelected == false })
    }
    
    func selectCardOn(tag: Int) {
        for card in unselectedCards() {
            if card.tag == tag {
                self.cards[tag].isSelected = true
                self.cards[tag].selectedItemImageName = currentTurn == .xik ? CrossImageName : ZeroImageName
                currentTurn = .oik
                return
            }
        }
    }
    
    func swichThePicFor(tag: Int) {
//           if (tag) {
//               if (currentTurn == Turn.oik) {
//                   currentTurn = .xik
//
//               } else if (currentTurn == Turn.xik) {
//                   currentTurn = .oik
//                }
//            }
    }
    
    func checkIfWin() {
        onWin?(nil)
    }
    
}
