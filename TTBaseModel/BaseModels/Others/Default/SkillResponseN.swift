//
//  SkillResponseN.swift
//  NMBaseModel
//
//  Created by Remzi YILDIRIM on 12.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class SkillResponseN: ResponseModelBase {
    // MARK: Properties
    public var skills: [SkillModel]?
    
    public required init() {
        super.init()
    }
    
    public required init(map: Map) {
        super.init(map: map)
    }
    
    // MARK: Mapping
    public override func mapping(map: Map){
        super.mapping(map: map)
        self.skills <- map[SerializationKeys.skills]
    }
}

extension SkillResponseN {
    private struct SerializationKeys {
        static let skills = "Skills"
    }
}


public class SkillModel: Mappable {
    public var name : String!
    
    public required init() { }
    
    public required init(map: Map) { }
    
    public func mapping(map: Map){
        name <- map[SerializationKeys.name]
    }
}

extension SkillModel {
    private struct SerializationKeys {
        static let name = "SKILL"
    }
}
