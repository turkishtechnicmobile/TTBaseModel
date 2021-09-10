//
//  SkillResponse.swift
//  NMBaseModel
//
//  Created by Remzi YILDIRIM on 13.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation

public class SkillResponse: Model {
    public let skills: [Skill]
    
    private enum CodingKeys: String, CodingKey {
        case skills = "Skills"
    }
    
//    required init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        self.skills = try container.decode([Skill].self, forKey: .skills)
//        try super.init(from: decoder)
//    }
}
