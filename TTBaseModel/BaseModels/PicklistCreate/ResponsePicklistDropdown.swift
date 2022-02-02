//
//  ResponsePicklistDropdown.swift
//  TTBaseModel
//
//  Created by Nazif MASMANACI on 29.06.2021.
//  Copyright © 2021 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class ResponsePriorityType : Mappable {
    // MARK: Properties
    public var types:[PicklistDropdownModel]?
    
    public required init() { }
    
    public required init(map: Map) { }
    
    public func mapping(map: Map) {
        self.types <- map["priorityTypes"]
    }
}

public class PicklistDropdownModel : Mappable {

    public var id:String!
    public var description:String!
    
    public required init() { }
    public required init(map: Map) { }
    
    public func mapping(map: Map) {
        
        var value :String?
        
        value <- map["id"]
        
        self.id  = value ?? ""
        
        value = nil
        
        value <- map["description"]
        
        self.description = value
    }
}
