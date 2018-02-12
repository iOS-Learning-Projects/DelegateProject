//
//  RunningPlayerDelegate.swift
//  DelegateProject
//
//  Created by Eduardo Vital Alencar Cunha on 24/05/17.
//  Copyright © 2017 Vital. All rights reserved.
//

import Foundation

protocol RunningPlayerDelegate {
    func gainSpeed (player: RunningPlayer, withSpeed spped: Float)
    func startRunning(player: RunningPlayer)
    func stopRunning(player: RunningPlayer)
}
