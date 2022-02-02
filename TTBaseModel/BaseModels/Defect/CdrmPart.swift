//
//  CdrmPart.swift
//  TTBaseModel
//
//  Created by Remzi YILDIRIM on 13.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class CdrmPart: Mappable, Model {
    
    public var what : String!
    public var definition : String!
    //    var createdDate : Date!
    //    var updatedDate : Date!
    public var status : Int!
    
    public required init?(map: Map) { }
    
    public required init?() { }
    
    public func mapping(map: Map){
        what <- map["WHAT"]
        definition <- map["DEFINITION"]
        //        createdDate <- map["CREATED_DATE"]
        //        updatedDate <- map["UPDATED_DATE"]
        status <- map["STATUS"]
    }
}

extension CdrmPart {
    enum CodingKeys: String, CodingKey {
        case what = "WHAT"
        case definition = "DEFINITION"
        //        case createdDate = "CREATED_DATE"
        //        case updatedDate = "UPDATED_DATE"
        case status = "STATUS"
    }
}
