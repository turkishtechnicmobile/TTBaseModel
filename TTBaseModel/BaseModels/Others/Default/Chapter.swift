//
//  Chapter.swift
//  NMBaseModel
//
//  Created by Remzi YILDIRIM on 13.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class Chapter: Mappable, Model {
    public var chapter : Int!
    public var description : String!
    
    public required init?(map: Map) { }
    
    required init?() { }
    
    public func mapping(map: Map){
        chapter <- map["CHAPTER"]
        description <- map["DESCRIPTION_TEXT"]
    }
}

extension Chapter {
    enum CodingKeys: String, CodingKey {
        case chapter = "CHAPTER"
        case description = "DESCRIPTION_TEXT"
    }
}
