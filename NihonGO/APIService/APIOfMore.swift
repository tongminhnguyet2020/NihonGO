//
//  APIOfMore.swift
//  NihonGO
//
//  Created by Tong Minh Nguyet on 5/1/20.
//  Copyright © 2020 Tong Minh Nguyet. All rights reserved.
//

import Foundation

func callAPIFamily(competion: (([Topic]) -> Void)? ) {
    if let filePath = Bundle.main.url(forResource: "gia_dinh", withExtension: "json") {
        if let data = try? Data(contentsOf: filePath) {
            if let json = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [[String: Any]] {
                let family = json.compactMap { Topic(data: $0) }
                competion?(family)
                
            }
        }
    }
}

func callAPINumber(competion: (([Topic]) -> Void)? ) {
    if let filePath = Bundle.main.url(forResource: "so_dem", withExtension: "json") {
        if let data = try? Data(contentsOf: filePath) {
            if let json = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [[String: Any]] {
                let family = json.compactMap { Topic(data: $0) }
                competion?(family)
                
            }
        }
    }
}

func callAPIdodung(competion: (([Topic]) -> Void)? ) {
    if let filePath = Bundle.main.url(forResource: "do_dung", withExtension: "json") {
        if let data = try? Data(contentsOf: filePath) {
            if let json = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [[String: Any]] {
                let family = json.compactMap { Topic(data: $0) }
                competion?(family)
                
            }
        }
    }
}

func callAPImausac(competion: (([Topic]) -> Void)? ) {
    if let filePath = Bundle.main.url(forResource: "mau_sac", withExtension: "json") {
        if let data = try? Data(contentsOf: filePath) {
            if let json = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [[String: Any]] {
                let family = json.compactMap { Topic(data: $0) }
                competion?(family)
                
            }
        }
    }
}

func callAPIdiadiem(competion: (([Topic]) -> Void)? ) {
    if let filePath = Bundle.main.url(forResource: "dia_diem", withExtension: "json") {
        if let data = try? Data(contentsOf: filePath) {
            if let json = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [[String: Any]] {
                let family = json.compactMap { Topic(data: $0) }
                competion?(family)
                
            }
        }
    }
}

func callAPItinhyeu(competion: (([Topic]) -> Void)? ) {
    if let filePath = Bundle.main.url(forResource: "tinh_yeu", withExtension: "json") {
        if let data = try? Data(contentsOf: filePath) {
            if let json = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [[String: Any]] {
                let family = json.compactMap { Topic(data: $0) }
                competion?(family)
                
            }
        }
    }
}

func callAPIlehoi(competion: (([Topic]) -> Void)? ) {
    if let filePath = Bundle.main.url(forResource: "le_hoi", withExtension: "json") {
        if let data = try? Data(contentsOf: filePath) {
            if let json = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [[String: Any]] {
                let family = json.compactMap { Topic(data: $0) }
                competion?(family)
                
            }
        }
    }
}

func callAPITopic(id: String, competion: (([Topic]) -> Void)? ) {
    if let filePath = Bundle.main.url(forResource: id, withExtension: "json") {
        if let data = try? Data(contentsOf: filePath) {
            if let json = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [[String: Any]] {
                let family = json.compactMap { Topic(data: $0) }
                competion?(family)
                
            }
        }
    }
}

func callAPItraicay(competion: (([Topic]) -> Void)? ) {
    if let filePath = Bundle.main.url(forResource: "trai_cay", withExtension: "json") {
        if let data = try? Data(contentsOf: filePath) {
            if let json = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [[String: Any]] {
                let family = json.compactMap { Topic(data: $0) }
                competion?(family)
                
            }
        }
    }
}

func callAPIgiaothong(competion: (([Topic]) -> Void)? ) {
    if let filePath = Bundle.main.url(forResource: "giao_thong", withExtension: "json") {
        if let data = try? Data(contentsOf: filePath) {
            if let json = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [[String: Any]] {
                let family = json.compactMap { Topic(data: $0) }
                competion?(family)
                
            }
        }
    }
}

func callAPIrau_cu(competion: (([Topic]) -> Void)? ) {
    if let filePath = Bundle.main.url(forResource: "rau_cu", withExtension: "json") {
        if let data = try? Data(contentsOf: filePath) {
            if let json = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [[String: Any]] {
                let family = json.compactMap { Topic(data: $0) }
                competion?(family)
                
            }
        }
    }
}
