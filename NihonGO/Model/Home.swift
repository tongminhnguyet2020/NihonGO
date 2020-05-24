//
//  Home.swift
//  NihonGO
//
//  Created by Tong Minh Nguyet on 4/27/20.
//  Copyright © 2020 Tong Minh Nguyet. All rights reserved.
//

import Foundation

class Home {
    
    var title: String?
    var text: String?
    var image: String?
    
    init(data: [String: Any]) {
        title = data["title"] as? String
        text = data["text"] as? String
        image = data["image"] as? String
    }
}

class Menu {
    
    var title: String?
    var image: String?
    
    init(data: [String: Any]) {
        title = data["title"] as? String
        image = data["image"] as? String
    }
}
