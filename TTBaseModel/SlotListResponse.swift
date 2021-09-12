//
//  SlotListResponse.swift
//  TTBaseModel
//
//  Created by Remzi YILDIRIM on 13.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper
import TTBaseApp

public class SlotListResponse: ResponseModelBase {
    public var slotList : [SlotModel]!
    public var count : Int!
    
    public required init() {
        super.init()
    }
    
    public required init(map: Map) {
        super.init(map: map)
    }
    
    public override func mapping(map: Map){
        self.slotList <- map[SerializationKeys.slotList]
        self.count <- map[SerializationKeys.count]
    }
}

extension SlotListResponse {
    private struct SerializationKeys {
        static let slotList = "SLOT_LIST"
        static let count = "COUNT"
    }
}

public class SlotModel: Mappable {
    public var flight : String!
    public var leg : Int!
    public var externalRefrence : String!
    public var arrivalStation : String!
    public var departsForStation : String!
    public var flightScheduleDate : Date!
    public var estimatedBeginDate : Date!
    public var estimatedEndDate : Date!
    
    public required init?(map: Map) { }
    
    public required init?() { }
    
    public func mapping(map: Map){
        
        // TODO: Remzi
//        let dateFormatter = ConstantFormatted.dateFormattedMapping()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy'-'MM'-'dd'T'HH':'mm':'ss'Z'"
        dateFormatter.timeZone = TimeZone.init(secondsFromGMT: 0)
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        
        var tempDateString : String!
        
        flight <- map[SerializationKeys.flight]
        leg <- map[SerializationKeys.leg]
        externalRefrence <- map[SerializationKeys.externalRefrence]
        arrivalStation <- map[SerializationKeys.arrivalStation]
        departsForStation <- map[SerializationKeys.departsForStation]

        tempDateString <- map[SerializationKeys.flightScheduleDate]
        if tempDateString != nil {
            tempDateString = tempDateString.replacingOccurrences(of: "\\.\\d+", with: "", options: .regularExpression)
            flightScheduleDate = dateFormatter.date(from: tempDateString)
        }
        
        tempDateString <- map[SerializationKeys.estimatedBeginDate]
        
        if tempDateString != nil {
            tempDateString = tempDateString.replacingOccurrences(of: "\\.\\d+", with: "", options: .regularExpression)
            estimatedBeginDate = dateFormatter.date(from: tempDateString)
        }
        
        tempDateString <- map[SerializationKeys.estimatedEndDate]
        
        if tempDateString != nil {
            tempDateString = tempDateString.replacingOccurrences(of: "\\.\\d+", with: "", options: .regularExpression)
            estimatedEndDate = dateFormatter.date(from: tempDateString)
        }
    }
    
}

extension SlotModel {
    private struct SerializationKeys {
        static let flight = "FLIGHT"
        static let leg = "LEG"
        static let externalRefrence = "EXTERNAL_REFERENCE"
        static let arrivalStation = "ARRIVAL_STATION"
        static let departsForStation = "DEPARTS_FOR_STATION"
        static let flightScheduleDate = "FLIGHT_SCHEDULE_DATE_ZULU"
        static let estimatedBeginDate = "ESTIMATED_SLOT_BEGIN_ZULU"
        static let estimatedEndDate = "ESTIMATED_SLOT_END_ZULU"
        
    }
}
