//
//  TranCode.swift
//  TTBaseModel
//
//  Created by Remzi YILDIRIM on 13.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class TranCode: Mappable, Model {
    public var systemCode : String!
    public var systemCodeDescription: String!
    public var systemTransantion: String!
    public var chapter: String!
    
    public required init?(map: Map) { }
    
    required init?() { }
    
    public func mapping(map: Map){
        systemCode <- map["SYSTEM_CODE"]
        systemCodeDescription <- map["SYSTEM_CODE_DESCRIPTION"]
        systemTransantion <- map["SYSTEM_TRANSACTION"]
        chapter <- map["CHAPTER"]
    }
}

extension TranCode {
    enum CodingKeys: String, CodingKey {
        case systemCode = "SYSTEM_CODE"
        case systemCodeDescription = "SYSTEM_CODE_DESCRIPTION"
        case systemTransantion = "SYSTEM_TRANSACTION"
        case chapter = "CHAPTER"
    }
}
