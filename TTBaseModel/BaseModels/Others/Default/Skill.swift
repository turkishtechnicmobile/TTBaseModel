//
//  Skill.swift
//  NMBaseModel
//
//  Created by Remzi YILDIRIM on 13.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class Skill: Mappable, Model {
    public var skill: String!
    public var skillDescription: String!
    
    public required init?(map: Map) { }
    
    required init?() { }
    
    public func mapping(map: Map){
        skill <- map["SKILL"]
        skillDescription <- map["SKILL_DESCRIPTION"]
    }
    
}

extension Skill {
    enum CodingKeys: String, CodingKey {
        case skill = "SKILL"
        case skillDescription = "SKILL_DESCRIPTION"
    }
}
