//
//  ChapterResponse.swift
//  TTBaseModel
//
//  Created by Remzi YILDIRIM on 13.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation

public class ChapterResponse: Model {
    public let chapters: [Chapter]
    
    private enum CodingKeys: String, CodingKey {
        case chapters = "Chapters"
    }
    
//    required init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        self.chapters = try container.decode([Chapter].self, forKey: .chapters)
//        try super.init(from: decoder)
//    }
}
