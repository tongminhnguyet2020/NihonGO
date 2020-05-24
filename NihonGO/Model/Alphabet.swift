//
//  Alphabet.swift
//  NihonGO
//
//  Created by Tong Minh Nguyet on 4/28/20.
//  Copyright © 2020 Tong Minh Nguyet. All rights reserved.
//

import Foundation

class Alphabet {
    var charId: String?
    var character: String?
    var romanization: String?
    
    init(data: [String: Any]) {
        charId = data["char_id"] as? String
        character = data["character"] as? String
        romanization = data["romanization"] as? String
    }
    
}
