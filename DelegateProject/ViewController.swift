//
//  ViewController.swift
//  DelegateProject
//
//  Created by Eduardo Vital Alencar Cunha on 24/05/17.
//  Copyright © 2017 Vital. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var player = Player()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.player.delegate = self
        player.run()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController: RunningPlayerDelegate {

    func startRunning(player: RunningPlayer) {
        print("Running")
    }

    func gainSpeed(player: RunningPlayer, withSpeed speed: Float) {
        print(player.currentSpeed)
        print("Speed engaging: \(speed)")
    }

    func stopRunning(player: RunningPlayer) {
        print("Stop running")
    }


}

