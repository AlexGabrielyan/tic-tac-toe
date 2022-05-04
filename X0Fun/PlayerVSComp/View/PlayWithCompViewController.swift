//
//  PlayWithCompViewController.swift
//  X0Fun
//
//  Created by Aleksandr Gabrielyan on 19.04.22.
//

import UIKit

class PlayWithCompViewController: UIViewController {
    
    var playEngine: PlayEngine?
    enum Turn {
        case Xik
        case oik
    }
    
    var firstTurn = Turn.Xik
    var currentTurn = Turn.Xik
    
    var ZERO = "oik"
    var CROSS = "xik"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let firsPlayer = PlayerViewModel(name: "Alex", score: 0, isMyTurn: true)
        let computerPlayer = PlayerViewModel(name: "Computer", score: 0, isMyTurn: false)
        playEngine = PlayEngine(firstPlayer: firsPlayer, secondPlayer: computerPlayer)
        
        playEngine?.onWin = { player in
            if player != nil {
                self.showWinAlert(name: player?.name)
            }
        }
    }
    
    private func showWinAlert(name: String?) {
        let alert = UIAlertController(title: name, message: "Win!!!", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func compButton(_ sender: XOButton) {
        //print(sender.tag)
        playEngine?.buttonPressed(tag: sender.tag)
        //        sender.xoImageView.image = UIImage(named:"0ik")
        //sender.backgroundColor = .brown
        swichThePic(sender)
    }
    
    func swichThePic(_ sender: XOButton) {
        if (sender.xoImageView.image == nil) {
            if(currentTurn == Turn.oik){
                sender.xoImageView.image = UIImage(named: ZERO)
            } else if (currentTurn == Turn.Xik){
                sender.xoImageView.image = UIImage(named: CROSS)
            }
        }
    }
    
}

