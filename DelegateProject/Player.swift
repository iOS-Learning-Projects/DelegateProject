//
//  Player.swift
//  DelegateProject
//
//  Created by Eduardo Vital Alencar Cunha on 24/05/17.
//  Copyright © 2017 Vital. All rights reserved.
//

import Foundation


struct Player: RunningPlayer {
    var currentSpeed: Float = 0.0
    var delegate: RunningPlayerDelegate?

    mutating func run() {
        delegate?.startRunning(player: self)

        for increasingSpeed in 1...10 {
            delegate?.gainSpeed(player: self, withSpeed: Float(increasingSpeed))
            self.currentSpeed += Float(increasingSpeed)
        }

        delegate?.stopRunning(player: self)
    }
}
