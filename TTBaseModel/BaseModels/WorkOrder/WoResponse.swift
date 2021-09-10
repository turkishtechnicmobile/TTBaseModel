//
//  WoResponse.swift
//  NMBaseModel
//
//  Created by Remzi YILDIRIM on 13.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class WoResponse: Mappable {
    // MARK: Properties
    public var workOrders: [WoItem]?
    
    public required init() {
    }
    
    public required init(map: Map) {
    }
    
    // MARK: Mapping
    public func mapping(map: Map) {
        self.workOrders <- map[SerializationKeys.workOrders]
    }

}

extension WoResponse {
    private struct SerializationKeys {
        static let workOrders = "WoAll"
    }
}

public class WoItem: Mappable {
    public var woID: Int!
    public var woDesc: String!
    public var woCat: String!
    public var scheduleStartDate: String!
    public var scheduleEndDate: String!
    public var actualStartDate: String!
    public var actualEndDate: String!
    public var priority: String!
    public var site: String!
    public var status: String!
    public var pn: String!
    public var pnsn: String!
    public var ac: String? // DTS
    public var detail: Detail? // DTS
    
    public required init?(map: Map) {
        
    }
    
    public required init?() {
        
    }
    
    public func mapping(map: Map){
        // TODO: Remzi
//        let dateFormatter = ConstantFormatted.dateFormattedMapping()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy'-'MM'-'dd'T'HH':'mm':'ss'Z'"
        dateFormatter.timeZone = TimeZone.init(secondsFromGMT: 0)
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        
        let dateFormatterPrint = DateFormatter()
        dateFormatterPrint.dateFormat = "dd.MM.yyyy"
        
        var tempDateString : String!
        var tempDate : Date!
        
        woID <- map[SerializationKeys.woID]
        woDesc <- map[SerializationKeys.woDesc]
        priority <- map[SerializationKeys.priority]
        site <- map[SerializationKeys.site]
        status <- map[SerializationKeys.status]
        woCat <- map[SerializationKeys.woCat]
        
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
        
        ac <- map[SerializationKeys.ac] // DTS
        // TODO: Which one working may self.detail = Detail(map: map)
        self.detail <- map[SerializationKeys.detail] // DTS
    }
    
}

extension WoItem {
    private struct SerializationKeys {
        static let scheduleStartDate = "SCHEDULE_START_DATE" // "2014-10-01T03:48:55"
//        static let scheduleStartHour = "SCHEDULE_START_HOUR" // 23
//        static let scheduleStartMinute = "SCHEDULE_START_MINUTE" // 59
        
        static let scheduleEndDate = "SCHEDULE_COMPLETION_DATE" // "2014-10-31T03:48:55"
//        static let scheduleEndHour = "SCHEDULE_COMPLETION_HOUR" // 23
//        static let scheduleEndMinute = "SCHEDULE_COMPLETION_MINUTE" // 59
        
        static let actualStartDate = "ACTUAL_START_DATE" // "2014-10-01T03:48:55"
//        static let actualStartHour = "ACTUAL_START_HOUR" // 23
//        static let actualStartMinute = "ACTUAL_START_MINUTE" // 59
        
        static let actualEndDate = "SCHEDULE_ORG_COMPLETION_DATE" // "2014-10-01T03:48:55"
//        static let actualEndHour = "SCHEDULE_ORG_COMPLETION_HOUR" // 23
//        static let actualEndMinute = "SCHEDULE_ORG_COMPLETION_MINUTE" // 59
        
        static let woID = "WO" //1231313
        static let woDesc = "WO_DESCRIPTION" //"adadadadadada"
        static let woCat = "WO_CATEGORY"
        static let priority = "PRIORITY" // null
        static let site = "SITE" //"LINE"
        static let status = "STATUS" //"Onhold"
        
        static let pn = "PN" //""
        static let pnsn = "PN_SN" //""
        
        static let ac = "AC" // DTS
        static let detail = "DETAIL" // DTS
    }
}

// DTS
extension WoItem {
    public class Detail: Mappable {
        public var tcStampedCount: Int?
        public var tcUnstampedCount: Int?
        public var nrcStampedCount: Int?
        public var nrcUnstampedCount: Int?
        
        public required init?() {
            
        }
        
        public required init?(map: Map) {
            
        }
        
        public func mapping(map: Map) {
            tcStampedCount <- map[SerializationKeys.tcStampedCount]
            tcUnstampedCount <- map[SerializationKeys.tcUnstampedCount]
            nrcStampedCount <- map[SerializationKeys.nrcStampedCount]
            nrcUnstampedCount <- map[SerializationKeys.nrcUnstampedCount]
        }
    }
}

extension WoItem.Detail {
    private struct SerializationKeys {
        static let tcStampedCount = "TC_STAMPED_COUNT"
        static let tcUnstampedCount = "TC_UNSTAMPED_COUNT"
        static let nrcStampedCount = "NRC_STAMPED_COUNT"
        static let nrcUnstampedCount = "NRC_UNSTAMPED_COUNT"
    }
}
