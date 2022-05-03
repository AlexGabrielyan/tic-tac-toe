//
//  XOButton.swift
//  X0Fun
//
//  Created by Vahan Grigoryan on 5/3/22.
//

import UIKit

class XOButton: UIButton {

    var xoImageView: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setUpUI()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setUpUI()
    }

    private func setUpUI() {
        xoImageView = UIImageView(frame: frame)
        if let imageview = xoImageView {
            self.addSubview(imageview)
            xoImageView?.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
            xoImageView?.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
            xoImageView?.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
            xoImageView?.topAnchor.constraint(equalTo: topAnchor).isActive = true
        }
    }
    
}
