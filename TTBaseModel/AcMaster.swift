//
//  AcMaster.swift
//  TTBaseModel
//
//  Created by Remzi YILDIRIM on 13.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class AcMaster: Mappable, Model {
    public var ac : String!
    public var acSn: String!
    public var acType : String!
    public var acSeries : String!
    public var acDescription : String!
    public var owner : String!
    public var customer :String!
    public var status : String!
    
    public required init?(map: Map) { }
    
    required init?() { }
    
    public func mapping(map: Map){
        ac <- map["AC"]
        acSn <- map["AC_SN"]
        acType <- map["AC_TYPE"]
        acSeries <- map["AC_SERIES"]
        acDescription <- map["AC_DESCRIPTION"]
        owner <- map["OWNER"]
        customer <- map["CUSTOMER"]
        status <- map["STATUS"]
    }
}

extension AcMaster {
    enum CodingKeys: String, CodingKey {
        case ac = "AC"
        case acSn = "AC_SN"
        case acType = "AC_TYPE"
        case acSeries = "AC_SERIES"
        case acDescription = "AC_DESCRIPTION"
        case owner = "OWNER"
        case customer = "CUSTOMER"
        case status = "STATUS"
    }
}
