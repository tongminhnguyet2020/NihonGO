//
//  PlaySound.swift
//  NihonGO
//
//  Created by Tong Minh Nguyet on 5/24/20.
//  Copyright © 2020 Tong Minh Nguyet. All rights reserved.
//

import Foundation
import AVFoundation


var player: AVAudioPlayer?

func playSound(soundName: String) {
    guard let url = Bundle.main.url(forResource: soundName , withExtension: "mp3") else { return }

    do {
        try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
        try AVAudioSession.sharedInstance().setActive(true)

        /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
        player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)

        guard let player = player else { return }

        player.play()

    } catch let error {
        print(error.localizedDescription)
    }
}
