//
//  TextToSpeech.swift
//  NihonGO
//
//  Created by Tong Minh Nguyet on 5/2/20.
//  Copyright © 2020 Tong Minh Nguyet. All rights reserved.
//

import Foundation
import AVFoundation


class TextToSpeech {
    
    static func speech(text: String) {
        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = AVSpeechSynthesisVoice(language: "ja-JP")

        let synthesizer = AVSpeechSynthesizer()
        synthesizer.speak(utterance)
    }
}
