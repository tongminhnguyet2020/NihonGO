//
//  CallAPI.swift
//  NihonGO
//
//  Created by Tong Minh Nguyet on 4/27/20.
//  Copyright © 2020 Tong Minh Nguyet. All rights reserved.
//

import Foundation
import Alamofire


func callAPIHome(competion: (([Home]) -> Void)? ) {
    if let filePath = Bundle.main.url(forResource: "home", withExtension: "json") {
        if let data = try? Data(contentsOf: filePath) {
            if let json = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [[String: Any]] {
                let home = json.compactMap { Home(data: $0) }
                competion?(home)
                
            }
        }
    }
}

func callAPIMenu(competion: (([Menu]) -> Void)? ) {
    if let filePath = Bundle.main.url(forResource: "menu", withExtension: "json") {
        if let data = try? Data(contentsOf: filePath) {
            if let json = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [[String: Any]] {
                let menu = json.compactMap { Menu(data: $0) }
                competion?(menu)
                
            }
        }
    }
}

func callAPIAlphabetHira(competion: (([Alphabet]) -> Void)? ) {
    if let filePath = Bundle.main.url(forResource: "hiragana", withExtension: "json") {
        if let data = try? Data(contentsOf: filePath) {
            if let json = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [[String: Any]] {
                let alphabet = json.compactMap { Alphabet(data: $0) }
                competion?(alphabet)
                
            }
        }
    }
}

func callAPIAlphabetKata(competion: (([Alphabet]) -> Void)? ) {
    if let filePath = Bundle.main.url(forResource: "katakana", withExtension: "json") {
        if let data = try? Data(contentsOf: filePath) {
            if let json = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [[String: Any]] {
                let alphabet = json.compactMap { Alphabet(data: $0) }
                competion?(alphabet)
                
            }
        }
    }
}

func callAPILessonResponse(competion: (([LessonResponse]) -> Void)? ) {
    if let filePath = Bundle.main.url(forResource: "lesson", withExtension: "json") {
        if let data = try? Data(contentsOf: filePath) {
            if let json = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [[String: Any]] {
                let lesson = json.compactMap { LessonResponse(data: $0) }
                competion?(lesson)
                
            }
        }
    }
}


func callAPILessonArray(number: Int = 0, competion: ((LessonArray) -> Void)? ) {
    if let filePath = Bundle.main.url(forResource: "lesson_\(number)", withExtension: "json") {
        if let data = try? Data(contentsOf: filePath) {
            if let json = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String: Any] {
                let lesson = LessonArray(data: json)
                competion?(lesson)
                
            }
        }
    }
}

func callAPIMore(competion: (([More]) -> Void)? ) {
    if let filePath = Bundle.main.url(forResource: "more", withExtension: "json") {
        if let data = try? Data(contentsOf: filePath) {
            if let json = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [[String: Any]] {
                print("json.count \(json.count)")
                let more = json.compactMap { More(data: $0) }
                competion?(more)
                
            }
        }
    }
}
