//
//  WoTaskCardResponse.swift
//  NMBaseModel
//
//  Created by Remzi YILDIRIM on 13.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class WoTaskCardResponse : Mappable {
    // MARK: Properties
    public var woTaskCards:[TaskCardItem]?
    
    public required init() {
    }
    
    public required init(map: Map) {
    }
    
    // MARK: Mapping
    public func mapping(map: Map){
        // super.mapping(map: map)
        self.woTaskCards <- map[SerializationKeys.woTaskCards]
    }
}

extension WoTaskCardResponse {
    private struct SerializationKeys {
        static let woTaskCards = "WoTaskCardAll"
    }
}

public class TaskCardItem : Mappable {
    public var woID : Int!
    public var woDesc  : String!
    public var isNonRoutine  : Bool!
    public var completedBy : String!
    public var completedDate : String!
    public var completedHour : Int!
    public var completedMinute : Int!
    public var defect : String!
    public var defectDesc : String!
    public var defectItem : Int!
    public var defectType : String!
    public var resolutionCategory : String!
    public var status : String!
    public var section : Int!
    public var chapter : Int!
    public var pnSn : String!
    public var taskCardID : String!
    public var scheduleTC : String?
    public var taskCardDesc : String!
    public var sourceCode : String!
    public var workArea : String?
    public var ac: String! // DTS
    public var pn: String! // DTS
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
        taskCardID <- map[SerializationKeys.taskCardID]
        taskCardDesc <- map[SerializationKeys.taskCardDesc]
        scheduleTC <- map[SerializationKeys.scheduleTC]
        
        var tempNonRoutine:String!
        tempNonRoutine <- map[SerializationKeys.isNonRoutine]
        
        isNonRoutine = tempNonRoutine == "Y"
        
        status <- map[SerializationKeys.status]
        section <- map[SerializationKeys.section]
        chapter <- map[SerializationKeys.chapter]
        pnSn <- map[SerializationKeys.pnSn]
        resolutionCategory <- map[SerializationKeys.resolutionCategory]
        
        completedBy <- map[SerializationKeys.completedBy]
        completedHour <- map[SerializationKeys.completedHour]
        completedMinute  <- map[SerializationKeys.completedMinute]
        
        defect <- map[SerializationKeys.defect]
        defectDesc <- map[SerializationKeys.defectDesc]
        defectItem <- map[SerializationKeys.defectItem]
        defectType <- map[SerializationKeys.defectType]
        
        sourceCode <- map[SerializationKeys.sourceCode]
        if sourceCode == nil {
            sourceCode = ""
        }
        
        workArea <- map[SerializationKeys.workArea]
        
        tempDateString <- map[SerializationKeys.completedDate]
        if tempDateString != nil {
            tempDate = dateFormatter.date(from: tempDateString)
            completedDate = dateFormatterPrint.string(from: tempDate)
        }
        
        ac <- map[SerializationKeys.ac] // DTS
        pn <- map[SerializationKeys.pn] // DTS
        detail <- map[SerializationKeys.detail] // DTS
    }
}

extension TaskCardItem {
    private struct SerializationKeys {
        static let woID = "WO"
        static let taskCardID = "TASK_CARD" //NRC00001
        static let taskCardDesc = "TASK_CARD_DESCRIPTION" //"adadadadadada"
        static let isNonRoutine = "NON_ROUTINE" // "Y"
        static let scheduleTC = "SCHEDULE_TASK_CARD"
        
        static let status = "STATUS"
        static let section = "SECTION"
        static let chapter = "CHAPTER"
        static let pnSn = "PN_SN" // "          "
        static let resolutionCategory = "RESOLUTION_CATEGORY"
        
        static let completedBy = "COMPLETED_BY"//: "E53256",
        static let completedDate = "COMPLETED_ON"//: "2014-12-31T00:00:00",
        static let completedHour = "COMPLETED_ON_HOUR"//: 7,
        static let completedMinute = "COMPLETED_ON_MINUTE"//: 0,
        
        static let defect = "DEFECT"//: "2685",
        static let defectDesc = "DEFECT_DESCRIPTION"//: null,
        static let defectItem = "DEFECT_ITEM"//: 1,
        static let defectType = "DEFECT_TYPE"//: "MAINT",
        static let sourceCode = "SOURCE_CODE"
        static let workArea = "WORK_AREA"
        
        static let ac = "AC" // DTS
        static let pn = "PN" // "          " // DTS
        static let detail = "DETAIL" // DTS
    }
}

// DTS
extension TaskCardItem {
    public class Detail: Mappable {
        public var revision: String?
        public var revizedDate: Date?
        public var reference: String? // DTS *
        public var areaCode: String? // DTS *
        public var skill: String?
        public var criticalTask: String?
        public var rii: String?
        public var sequenceNumber: String?
        public var stamperRegisterID: String?
        
        public required init?(map: Map) {
            
        }
        
        public func mapping(map: Map) {
            // TODO: Remzi
//            let dateFormatter = ConstantFormatted.dateFormattedMapping()
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy'-'MM'-'dd'T'HH':'mm':'ss'Z'"
            dateFormatter.timeZone = TimeZone.init(secondsFromGMT: 0)
            dateFormatter.locale = Locale(identifier: "en_US_POSIX")
            
            var dateString : String?
            
            revision <- map[SerializationKeys.revision]
            
            dateString <- map[SerializationKeys.revizedDate]
            if let dateString = dateString {
                revizedDate = dateFormatter.date(from: dateString)
            }
            
            reference <- map[SerializationKeys.reference]
            areaCode <- map[SerializationKeys.areaCode]
            skill <- map[SerializationKeys.skill]
            criticalTask <- map[SerializationKeys.criticalTask]
            rii <- map[SerializationKeys.rii]
            sequenceNumber <- map[SerializationKeys.rii]
        }
    }
}

extension TaskCardItem.Detail {
    struct SerializationKeys {
        static let revision = "REVISION" // DTS
        static let revizedDate = "REVISED_DATE" // DTS
        static let reference = "REFERENCE" // DTS // ENGINEERING_DOCUMENT.EO_DOCUMENT
        static let areaCode = "AREA_CODE" // DTS
        static let skill = "SKILL" // DTS
        static let criticalTask = "CRITICAL_TASK" // DTS
        static let rii = "RII" // DTS
        static let sequenceNumber = "TASK_CARD_NUMBERING_SYSTEM" // DTS
        static let stamperRegisterID = "STAMPER_REGISTER_ID" // DTS
    }
}
