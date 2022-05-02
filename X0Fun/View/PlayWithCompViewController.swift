//
//  PlayWithCompViewController.swift
//  X0Fun
//
//  Created by Aleksandr Gabrielyan on 19.04.22.
//

import UIKit

class PlayWithCompViewController: UIViewController {
    
    var playEngine: PlayEngine?
    
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
    
    @IBAction func compButton(_ sender: UIButton) {
        //print(sender.tag)
        playEngine?.buttonPressed(tag: sender.tag)
    }

}
