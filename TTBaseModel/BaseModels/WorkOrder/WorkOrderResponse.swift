//
//  WorkOrderResponse.swift
//  TTBaseModel
//
//  Created by MnzfM on 26.11.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper
import TTBaseApp

public enum WOStatus {
    
    case CLOSED, GENERATION, LINE, OPEN, HOLD, POSTCOMPLT, ONHOLD, COMPLETED
    
    func value() -> String {
        switch self {
        case .CLOSED: return "CLOSED"
        case .GENERATION: return "GENERATION"
        case .LINE: return "LINE"
        case .OPEN: return "OPEN"
        case .HOLD: return "HOLD"
        case .POSTCOMPLT: return "POSTCOMPLT"
        case .ONHOLD: return "ONHOLD"
        case .COMPLETED: return "COMPLETED"
        }
    }
}


// Core için geliştirildi (DTS)
public class WoResponseNV: Mappable {

    public var workOrders: [WoItemNV]?
    
    public required init() { }
    
    public required init(map: Map) { }
    
    public func mapping(map: Map) {
        self.workOrders <- map[SerializationKeys.workOrders]
    }
    
    private struct SerializationKeys {
        static let workOrders = "workOrders"
    }
}

public class WoItemNV: Mappable {
    public var woID: Int!
    public var woCat: String!
    public var woDesc: String!
    public var scheduleStartDate: String!
    public var scheduleEndDate: String!
    public var actualStartDate: String!
    public var actualEndDate: String!
    public var crsDate: String?
    public var priority: String!
    public var site: String!
    public var status: String!
    public var pn: String!
    public var pnsn: String!
    public var ac: String! // DTS
    public var location:String! // DTS
    public var tcCount: Int!
    public var nrtcCount: Int!
    public var detail: WoItemNVStampCountModel? // DTS
    
    public required init?(map: Map) { }
    
    public required init?() { }
    
    public func mapping(map: Map){
        // TODO: Remzi
//        let dateFormatter = ConstantFormatted.dateFormattedMapping()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = TTBaseDateFormatType.api.rawValue //"yyyy'-'MM'-'dd'T'HH':'mm':'ss'Z'"
        dateFormatter.timeZone = TimeZone.init(secondsFromGMT: 0)
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        
        let dateFormatterPrint = DateFormatter()
        dateFormatterPrint.dateFormat = TTBaseDateFormatType.onlyDate.rawValue // "dd.MM.yyyy"
        
        var tempDateString : String!
        var tempDate : Date!
        
        woID <- map[SerializationKeys.woID]
        woDesc <- map[SerializationKeys.woDesc]
        priority <- map[SerializationKeys.priority]
        site <- map[SerializationKeys.site]
        status <- map[SerializationKeys.status]
        woCat <- map[SerializationKeys.woCat]
        tcCount <- map[SerializationKeys.tcCount]
        nrtcCount <- map[SerializationKeys.nrtcCount]
        pn <- map[SerializationKeys.pn]
        pnsn <- map[SerializationKeys.pnsn]
        
        tempDateString <- map[SerializationKeys.scheduleStartDate]
        if tempDateString != nil {
            tempDate = dateFormatter.date(from: tempDateString)
            scheduleStartDate = dateFormatterPrint.string(from: tempDate)
        }
        
        tempDateString <- map[SerializationKeys.scheduleEndDate]
        if tempDateString != nil {
            tempDate = dateFormatter.date(from: tempDateString)
            scheduleEndDate = dateFormatterPrint.string(from: tempDate)
        }
        
        tempDateString <- map[SerializationKeys.actualStartDate]
        if tempDateString != nil {
            tempDate = dateFormatter.date(from: tempDateString)
            actualStartDate = dateFormatterPrint.string(from: tempDate)
        }
        
        tempDateString <- map[SerializationKeys.actualEndDate]
        if tempDateString != nil {
            tempDate = dateFormatter.date(from: tempDateString)
            actualEndDate = dateFormatterPrint.string(from: tempDate)
        }
        
        tempDateString <- map[SerializationKeys.crsDate]
        if tempDateString != nil {
            tempDate = dateFormatter.date(from: tempDateString)
            crsDate = dateFormatterPrint.string(from: tempDate)
        }
        
        var acTemp:String?
        acTemp <- map[SerializationKeys.ac]
        ac  = acTemp ?? ""
        
        var locTemp:String?
        locTemp <- map[SerializationKeys.location]
        location  = locTemp ?? ""
        // TODO: Which one working may self.detail = Detail(map: map)
    }
    
    private struct SerializationKeys {
     
        static let ac = "ac"
        static let location = "location"
        static let woID = "wo"
        static let woDesc = "woDescription"
        static let woCat = "woCategory"
        static let pn = "pn"
        static let pnsn = "pnSn"
        static let priority = "priority"
        static let site = "site"
        static let status = "status"
        
        
        static let scheduleStartDate = "scheduleStartDate"
        static let scheduleEndDate = "scheduleEndDate"
        static let actualStartDate = "actualStartDate"
        static let actualEndDate = "actualEndDate"
        static let crsDate = "crsDate"
        
        static let tcCount = "tcCount"
        static let nrtcCount = "nrtcCount"
    }
    
}

public class WoItemNVStampCountModel: Mappable {
    public var tcStampedCount: Int?
    public var tcUnstampedCount: Int?
    public var nrcStampedCount: Int?
    public var nrcUnstampedCount: Int?
    
    public required init?() { }
    
    public required init?(map: Map) { }
    
    public func mapping(map: Map) {
        tcStampedCount <- map[SerializationKeys.tcStampedCount]
        tcUnstampedCount <- map[SerializationKeys.tcUnstampedCount]
        nrcStampedCount <- map[SerializationKeys.nrcStampedCount]
        nrcUnstampedCount <- map[SerializationKeys.nrcUnstampedCount]
    }
    
    private struct SerializationKeys {
        static let tcStampedCount = "tcStampCount"
        static let tcUnstampedCount = "tcUnstampCount"
        static let nrcStampedCount = "nrtcStampCount"
        static let nrcUnstampedCount = "nrtcUnstampCount"
    }
}
