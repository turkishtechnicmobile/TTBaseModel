//
//  ManHourResponse.swift
//  TTBaseModel
//
//  Created by Remzi YILDIRIM on 13.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper
import TTBaseApp

public class ManHourResponse : Mappable {
    // MARK: Properties
    public var manhourList:[ManhourItem]?
    
    public required init() {
    }
    
    public required init(map: Map) {
    }
    
    // MARK: Mapping
    public func mapping(map: Map) {
        // super.mapping(map: map)
        self.manhourList <- map[SerializationKeys.manhourList]
    }
}

extension ManHourResponse {
    private struct SerializationKeys {
        static let manhourList = "WoActuals"
    }
}

public class ManhourItem : Mappable, ItemViewModel { //manhour list Item
    public var id : String!
    public var emloyeeID : String!
    public var employeeName : String?
    public var employeeSkill : String!
    public var tranDate :String!
    public var startHour :Int!
    public var startMinute :Int!
    public var endHour :Int!
    public var endMinute :Int!
    public var iHour:Int!
    public var iMinute:Int!
    public var item :String!
    
    public required init?(map: Map) {
    }
    
    required init?() {
    }
    
    public func mapping(map: Map){
        // TODO: Remzi
//        let dateFormatter = ConstantFormatted.dateFormattedMapping()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = TTBaseDateFormatType.api.rawValue // "yyyy'-'MM'-'dd'T'HH':'mm':'ss'Z'"
        dateFormatter.timeZone = TimeZone.init(secondsFromGMT: 0)
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        
        let dateFormatterPrint = DateFormatter()
        dateFormatterPrint.dateFormat = TTBaseDateFormatType.onlyDate.rawValue // "dd.MM.yyyy"
        
        var tempDateString : String!
        var tempDate : Date!
        
        id <- map[SerializationKeys.id]
        emloyeeID <- map[SerializationKeys.emloyeeID]
        employeeName <- map[SerializationKeys.employeeName]
        employeeSkill <- map[SerializationKeys.employeeSkill]
        
        startHour <- map[SerializationKeys.startHour]
        startMinute <- map[SerializationKeys.startMinute]
        endHour <- map[SerializationKeys.endHour]
        endMinute <- map[SerializationKeys.endMinute]
        iHour <- map[SerializationKeys.iHour]
        iMinute <- map[SerializationKeys.iMinute]
        item <- map[SerializationKeys.item]
        
       
        tempDateString <- map[SerializationKeys.tranDate]
        if tempDateString != nil {
            tempDate = dateFormatter.date(from: tempDateString)
            tranDate = dateFormatterPrint.string(from: tempDate)
        }
        
        
    }
    
}

extension ManhourItem {
    private struct SerializationKeys {
        static let id = "WO_ACTUAL_TRANSACTION"
        static let emloyeeID = "EMPLOYEE"
        static let employeeName = "NAME"
        static let employeeSkill = "SKILL"
        static let item = "TASK_CARD_ITEM"
        static let tranDate = "TRANSACTION_DATE"
        static let startHour = "START_HOUR"
        static let startMinute = "START_MINUTE"
        static let endHour = "END_HOUR"
        static let endMinute = "END_MINUTE"
        static let iHour = "HOURS"
        static let iMinute = "MINUTES"
    }
}
