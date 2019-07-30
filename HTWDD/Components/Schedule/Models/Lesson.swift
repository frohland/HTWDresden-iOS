//
//  Lesson.swift
//  HTWDD
//
//  Created by Mustafa Karademir on 22.07.19.
//  Copyright © 2019 HTW Dresden. All rights reserved.
//

import Foundation

struct Lesson: Codable {
    
    let id: String
    let moduleId: String?
    let lessonTag: String?
    let name: String
    let type: LessonType
    let day: Int
    let beginTime: String
    let endTime: String
    let week: Int
    let weeksOnly: [Int]
    let professor: String?
    let rooms: [String]
    let lastChanged: String
    
    // MARK: - Lessontypes
    enum LessonType: String, Codable {
        case practical
        case lesson
        case exercise
        case requested
        case block
        case unkown
        
        var localizedDescription: String {
            switch self {
            case .practical: return R.string.localizable.scheduleLectureTypePractical()
            case .lesson: return R.string.localizable.scheduleLectureTypeLecture()
            case .exercise: return R.string.localizable.scheduleLectureTypeExercise()
            case .requested: return R.string.localizable.scheduleLectureTypeRequested()
            case .block: return R.string.localizable.scheduleLectureTypeBlock()
            case .unkown: return R.string.localizable.scheduleLectureTypeUnknown()
            }
        }
        
        init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer().decode(String.self)
            
            switch container {
            case let str where str.hasPrefix("V"): self = .lesson
            case let str where str.hasPrefix("Ü"): self = .exercise
            case let str where str.hasPrefix("P"): self = .practical
            case let str where str.hasPrefix("Buchung"): self = .requested
            case let str where str.hasPrefix("Block"): self = .block
            default:
                self = .unkown
            }
        }
       
    }
    
}
