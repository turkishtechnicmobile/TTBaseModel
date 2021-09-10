//
//  CdrmPartDescription.swift
//  NMBaseModel
//
//  Created by Remzi YILDIRIM on 13.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class CdrmPartDescription: Mappable, Model {
    
    public var how : String!
    public var definition: String!
    //    var createdDate : Date!
    //    var updatedDate : Date!
    public var status : Int!
    
    public required init?(map: Map) { }
    
    required init?() { }
    
    public func mapping(map: Map){
        how <- map["HOW"]
        definition <- map["DEFINITION"]
        //        createdDate <- map["CREATED_DATE"]
        //        updatedDate <- map["UPDATED_DATE"]
        status <- map["STATUS"]
    }
}

extension CdrmPartDescription {
    enum CodingKeys: String, CodingKey {
        case how = "HOW"
        case definition = "DEFINITION"
        //        case createdDate = "CREATED_DATE"
        //        case updatedDate = "UPDATED_DATE"
        case status = "STATUS"
    }
}
