//
//  Item.swift
//  TTBaseModel
//
//  Created by Remzi YILDIRIM on 12.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper
import TTBaseApp

open class Item: Mappable {
    // MARK: Declaration for string constants to be used to decode and also serialize.
    public var itemRefID : Int?
    public var currentStatus: ProgressStatus?
    public var taskDesc : String?
    public var ac : String?
    public var station : String?
    public var wo: Int?
    public var woDesc: String?
    public var pn: String?
    public var sn: String?
    public var taskCard: String?
    public var taskCardDesc: String?
    public var slotAfterFlight : String?
    public var slotAfterFlightLeg : String?
    public var slotAfterFlightDate : Date?
    public var parkPosArr : String?
    public var parkPosDep : String?
    public var gateArr : Int?
    public var gateDep : String?
    public var slotStartDate : Date?
    public var slotEndDate : Date?
    public var startedDate : Date?
    public var pausedDate : Date?
    public var closedDate : Date?

//    var otheR_ASSIGNED_TECHS : String?
    public var type = RosterSegmentTypes.SelfAssigned
    
    public required init?(map: Map) { }
    
    public required init?() { }
    
    open func mapping(map: Map){
        // TODO: Remzi
//        let dateFormatter = ConstantFormatted.dateFormattedMapping()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = TTBaseDateFormatType.api.rawValue // "yyyy'-'MM'-'dd'T'HH':'mm':'ss'Z'"
        dateFormatter.timeZone = TimeZone.init(secondsFromGMT: 0)
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        
        itemRefID <- map[SerializationKeys.itemRefID]
        ac <- map[SerializationKeys.ac]
        station <- map[SerializationKeys.station]
        wo <- map[SerializationKeys.wo]
        woDesc <- map[SerializationKeys.woDesc]
        taskCard <- map[SerializationKeys.taskCard]
        taskCardDesc <- map[SerializationKeys.taskCardDesc]
        pn <- map[SerializationKeys.pn]
        sn <- map[SerializationKeys.sn]
        slotAfterFlight <- map[SerializationKeys.slotAfterFlight]
        slotAfterFlightLeg <- map[SerializationKeys.slotAfterFlightLeg]
        
        var tempString : String!
        tempString <- map[SerializationKeys.slotAfterFlightDate]
        
        slotAfterFlightDate = dateFormatter.date(from: tempString!)
        
        parkPosArr <- map[SerializationKeys.parkPosArr]
        parkPosDep <- map[SerializationKeys.parkPosDep]
        
        gateArr <- map[SerializationKeys.gateArr]
        gateDep <- map[SerializationKeys.gateDep]
        
        tempString <- map[SerializationKeys.slotStartDate]
        tempString = tempString.components(separatedBy: ".")[0]
        slotStartDate = dateFormatter.date(from: tempString!)
        
        tempString <- map[SerializationKeys.slotEndDate]
        tempString = tempString.components(separatedBy: ".")[0]
        slotEndDate = dateFormatter.date(from: tempString!)
        
        
        dateFormatter.dateFormat = "yyyy'-'MM'-'dd'T'HH':'mm':'ss.SSS'Z'"
        
        tempString <- map[SerializationKeys.startedDate]
        if tempString != nil {
            startedDate = dateFormatter.date(from: tempString!)
        }
        
        tempString <- map[SerializationKeys.pausedDate]
        if tempString != nil {
            pausedDate = dateFormatter.date(from: tempString)
        }
        
        tempString <- map[SerializationKeys.closedDate]
        if tempString != nil {
            closedDate = dateFormatter.date(from: tempString)
        }
        
        var tempType : Int!
        tempType <- map[SerializationKeys.currentStatus]
        
        currentStatus = ProgressStatus(rawValue: tempType)
        taskDesc <- map[SerializationKeys.taskDesc]
        
//        currenT_STATUS = RosterRequestType(rawValue: Int(currenT_STATUS!)!)?.rawValue
        
//        otheR_ASSIGNED_TECHS <- map["OTHER_ASSIGNED_TECHS"]
    }
}

extension Item {
    private struct SerializationKeys {
        static let itemRefID = "ITEM_REF_ID"
        static let currentStatus = "CURRENT_STATUS"
        static let taskDesc = "TASK_DESC"
        static let ac = "AC"
        static let station = "STATION"
        static let wo = "WO"
        static let woDesc = "WO_DESC"
        static let pn = "PN"
        static let sn = "SN"
        static let taskCard = "TASK_CARD"
        static let taskCardDesc = "TASK_CARD_DESC"
        static let slotAfterFlight = "SLOT_AFTER_FLIGHT"
        static let slotAfterFlightLeg = "SLOT_AFTER_FLIGHT_LEG"
        static let slotAfterFlightDate = "SLOT_AFTER_FLIGHT_DATE_ZULU"
        static let parkPosArr = "PARK_POS_ARR"
        static let parkPosDep = "PARK_POS_DEP"
        static let gateArr = "GATE_ARR"
        static let gateDep = "GATE_DEP"
        static let slotStartDate = "ESTIMATED_SLOT_START_ZULU"
        static let slotEndDate = "ESTIMATED_SLOT_END_ZULU"
        static let startedDate = "STARTED_AT_ZULU"
        static let pausedDate = "PAUSED_AT_ZULU"
        static let closedDate = "CLOSED_AT_ZULU"
    }
}
