//
//  VocMinnanoNihongo.swift
//  NihonGO
//
//  Created by Tong Minh Nguyet on 4/29/20.
//  Copyright © 2020 Tong Minh Nguyet. All rights reserved.
//

import Foundation

class VocMinnanoNihongo {
    var name: String?
    var nameVoc: String?
    
    init(data: [String: Any]) {
        name = data["name"] as? String
        nameVoc = data["name_voc"] as? String
    }
}
