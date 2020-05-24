//
//  Lesson.swift
//  NihonGO
//
//  Created by Tong Minh Nguyet on 4/27/20.
//  Copyright © 2020 Tong Minh Nguyet. All rights reserved.
//

import Foundation

class LessonResponse {
    
    var title: String?
    var image: String?
    
    init(data: [String: Any]) {
        title = data["title"] as? String
        image = data["image"] as? String
    }
}



class LessonArray {
    var lesson: [Lesson]?
    init(data: [String: Any]) {
        if let lessons = data.values.first as? [[String: Any]] {
            self.lesson = lessons.compactMap({ Lesson(data: $0) })
        }
    }
}

class Lesson {
    
    var detail: String?
    var mainAudio: String?
    var grammar: String?
    var dialogue: [DialogueOfLesson]?
    
    init(data: [String: Any]) {
        detail = data["detail"] as? String
        mainAudio = data["main_audio"] as? String
        grammar = data["grammar"] as? String
        if let dialogueArray = data["dialogue"] as? [[String: Any]] {
            self.dialogue = dialogueArray.compactMap({ DialogueOfLesson(data: $0) })
        }
    }
}

