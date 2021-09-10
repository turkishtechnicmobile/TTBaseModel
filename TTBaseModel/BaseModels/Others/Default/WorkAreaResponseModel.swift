//
//  WorkAreaResponseModel.swift
//  NMBaseModel
//
//  Created by Nazif MASMANACI on 9.06.2021.
//  Copyright © 2021 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class WorkAreaResponseModel: Mappable, Model {
    public var workAreas : [WorkAreaModel]!
    
    public required init?(map: Map) { }
    
    required init?() { }
    
    public func mapping(map: Map){
        workAreas <- map["systemTranCodes"]
    }
    
    enum CodingKeys: String, CodingKey {
        case workAreas = "systemTranCodes"
    }
}


public class WorkAreaModel: Mappable, Model {
    public var code : String!
    
    public required init?(map: Map) { }
    
    required init?() { }
    
    public func mapping(map: Map){
        code <- map["systemCode"]
    }
    
    enum CodingKeys: String, CodingKey {
        case code = "systemCode"
    }
}
