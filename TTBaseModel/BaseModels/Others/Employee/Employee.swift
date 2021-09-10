
//
//  Employee.swift
//  NMBaseModel
//
//  Created by Remzi YILDIRIM on 13.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class Employee: Mappable, Model {
    public var name: String!
    public var position: String!
    public var mailEmail: String!
    public var lastName: String!
    public var firstName: String!
    public var dateOfBirth: Date!
    
    public required init?(map: Map) { }
    
    required init?() { }
    
    public func mapping(map: Map){
        name <- map["NAME"]
        position <- map["POSITION"]
        mailEmail <- map["MAIL_EMAIL"]
        lastName <- map["LAST_NAME"]
        firstName <- map["FIRST_NAME"]
        dateOfBirth <- map["DATE_OF_BIRTH"]
    }
}

extension Employee {
    enum CodingKeys: String, CodingKey {
        case name = "NAME"
        case position = "POSITION"
        case mailEmail = "MAIL_EMAIL"
        case lastName = "LAST_NAME"
        case firstName = "FIRST_NAME"
        case dateOfBirth = "DATE_OF_BIRTH"
    }
}
