//
//  Topic.swift
//  NihonGO
//
//  Created by Tong Minh Nguyet on 4/27/20.
//  Copyright © 2020 Tong Minh Nguyet. All rights reserved.
//

import Foundation
class VocaResponse {
    
    var title: String?
    var file: String?
    
    init(data: [String: Any]) {
        title = data["title"] as? String
        file = data["file"] as? String
    }
}
    
class Topic {
    
    var kanji: String?
    var kana: String?
    var romaji: String?
    var vn: String?
    
    init(data: [String: Any]) {
        kanji = data["kanji"] as? String
        kana = data["kana"] as? String
        romaji = data["romaji"] as? String
        vn = data["vn"] as? String
    }
}
