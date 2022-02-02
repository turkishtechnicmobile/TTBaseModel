//
//  Section.swift
//  TTBaseModel
//
//  Created by Remzi YILDIRIM on 13.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class Section: Mappable, Model {
    public var section: Int!
    public var description: String?
    
    public required init?(map: Map) { }
    
    required init?() { }
    
    public func mapping(map: Map){
        section <- map["SECTION"]
        description <- map["DESCRIPTION_TEXT"]
    }
    
}

extension Section {
    enum CodingKeys: String, CodingKey {
        case section = "SECTION"
        case description = "DESCRIPTION_TEXT"
    }
}
