//
//  EmployeeResponseN.swift
//  NMBaseModel
//
//  Created by Remzi YILDIRIM on 12.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class EmployeeResponseN: ResponseModelBase {
    // MARK: Properties
    public var employeeInfo: EmployeeModel?
    
    public required init() {
        super.init()
    }
    
    public required init(map: Map) {
        super.init(map: map)
    }
    
    // MARK: Mapping
    public override func mapping(map: Map) {
        super.mapping(map: map)
        self.employeeInfo <- map[SerializationKeys.employeeInfo]
    }
}

extension EmployeeResponseN {
    
    private struct SerializationKeys {
        static let employeeInfo = "Employee"
    }
}


public class EmployeeModel: Mappable {
    public var name:String!
    
    public required init() {}
    
    public required init(map: Map) {}
    
    // MARK: Mapping
    public func mapping(map: Map) {
        self.name <- map[SerializationKeys.name]
    }
}

extension EmployeeModel {
    private struct SerializationKeys {
        static let name = "NAME"
    }
}
