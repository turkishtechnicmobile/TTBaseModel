//
//  CdrmLocation.swift
//  TTBaseModel
//
//  Created by Remzi YILDIRIM on 13.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class CdrmLocation: CdrmBase {
    public var desc: String!
    public var fleet : String!
    public var mainWhere : String!
    public var whereCode : String!
    public var whereNo : Int!

    public required init() {
        super.init()
    }

    public required init(map: Map) {
        super.init(map: map)
    }

    public override func mapping(map: Map){
        super.mapping(map: map)
        fleet <- map[SerializationKeys.fleet]
        mainWhere <- map[SerializationKeys.mainWhere]
        desc <- map[SerializationKeys.desc]
        whereCode <- map[SerializationKeys.whereCode]
        whereNo <- map[SerializationKeys.whereNo]
    }
}

extension CdrmLocation {
    private struct SerializationKeys {
        static let fleet = "FLEET"
        static let mainWhere = "MAIN_WHERE"
        static let desc = "DESCRIPTION"
        static let whereCode = "WHERE_CODE"
        static let whereNo = "WHERE_NO"
    }
}


public class CdrmLocationRem: Mappable, Model {
    public var fleet : String!
    public var mainWhere : String!
    public var description : String!
    public var whereCode : String!
    public var whereNo : Int!
    //    var createdDate : Date!
    //    var updatedDate : Date!
    public var status : Int!
    
    public required init?(map: Map) { }
    
    required init?() { }
    
    public func mapping(map: Map){
        //        let dateFormatter = DateFormatter()
        //        dateFormatter.dateFormat = "yyyy'-'MM'-'dd'T'HH':'mm':'ss'Z'"
        //        dateFormatter.timeZone = TimeZone.init(secondsFromGMT: 0)
        //        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        
        //        var tempString : String!
        fleet <- map["FLEET"]
        mainWhere <- map["MAIN_WHERE"]
        description <- map["DESCRIPTION"]
        whereCode <- map["WHERE_CODE"]
        whereNo <- map["WHERE_NO"]
        
        //        tempString <- map["CREATED_DATE"]
        //        createdDate = dateFormatter.date(from: tempString)
        //
        //        tempString <- map["UPDATED_DATE"]
        //        updatedDate = dateFormatter.date(from: tempString)
        
        status <- map["STATUS"]
    }
}

extension CdrmLocationRem {
    enum CodingKeys: String, CodingKey {
        case fleet = "FLEET"
        case mainWhere = "MAIN_WHERE"
        case description = "DESCRIPTION"
        case whereCode = "WHERE_CODE"
        case whereNo = "WHERE_NO"
        //        case createdDate = "CREATED_DATE"
        //        case updatedDate = "UPDATED_DATE"
        case status = "STATUS"
    }
}
