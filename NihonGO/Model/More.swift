//
//  More.swift
//  NihonGO
//
//  Created by Tong Minh Nguyet on 5/1/20.
//  Copyright © 2020 Tong Minh Nguyet. All rights reserved.
//

import Foundation

class More {
    
    var title: String?
    var image: String?
    var id: String?
    
    init(data: [String: Any]) {
        title = data["title"] as? String
        image = data["image"] as? String
        id = data["id"] as? String
    }
}
