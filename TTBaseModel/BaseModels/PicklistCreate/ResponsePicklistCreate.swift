//
//  ResponsePicklistCreate.swift
//  TTBaseModel
//
//  Created by Nazif MASMANACI on 23.06.2021.
//  Copyright © 2021 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class ResponsePicklistCreate : Mappable {
    // MARK: Properties
    public var picklistCreate:PicklistCreateModel?
    
    public required init() { }
    
    public required init(map: Map) { }
    
    public func mapping(map: Map) {
        self.picklistCreate <- map["piclistCreate"]
    }
}

public class PicklistCreateModel : Mappable {

    public var picklistNo:Int?
    
    public required init() { }
    public required init(map: Map) { }
    
    public func mapping(map: Map) {
        self.picklistNo <- map["picklist"]
    }
}


