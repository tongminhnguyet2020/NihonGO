//
//  DialogueOfLesson.swift
//  NihonGO
//
//  Created by Tong Minh Nguyet on 4/27/20.
//  Copyright © 2020 Tong Minh Nguyet. All rights reserved.
//

import Foundation

class DialogueOfLesson {
    
    var kanaName: String?
    var romaji_name: String?
    var kana: String?
    var romaji: String?
    var vn: String?
    var audio: String?
    
    init(data: [String: Any]) {
        kanaName = data["kana_name"] as? String
        romaji_name = data["romaji_name"] as? String
        kana = data["kana"] as? String
        romaji = data["romaji"] as? String
        vn = data["vn"] as? String
        audio = data["audio"] as? String
    }
}
