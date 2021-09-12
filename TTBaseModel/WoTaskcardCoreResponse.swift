//
//  WoTaskcardCore.swift
//  TTBaseModel
//
//  Created by MnzfM on 22.12.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class WoTaskcardCore: Mappable {

    public var woTaskCards:[TaskCardModel]?
    
    public required init() { }
    
    public required init(map: Map) { }

    public func mapping(map: Map){
        self.woTaskCards <- map["taskCards"]
    }
}

public class TaskCardModel : Mappable {
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
    public var ac: String! // DTS
    public var pn: String! // DTS
    
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
        
        tempDateString <- map[SerializationKeys.completedDate]
        if tempDateString != nil {
            tempDate = dateFormatter.date(from: tempDateString)
            completedDate = dateFormatterPrint.string(from: tempDate)
        }
        
        ac <- map[SerializationKeys.ac] // DTS
        pn <- map[SerializationKeys.pn] // DTS
    }
}

extension TaskCardModel {
    private struct SerializationKeys {
        static let woID = "wo"
        static let taskCardID = "taskCard" //NRC00001
        static let taskCardDesc = "taskCardDescription" //"adadadadadada"
        static let isNonRoutine = "nonroutine" // "Y"
        static let scheduleTC = "scheduleTaskCard"
        
        static let status = "status"
        static let section = "section"
        static let chapter = "chapter"
        static let pnSn = "sn" // "          "
        static let resolutionCategory = "resolutionCategory"
        
        static let completedBy = "completedBy"//: "E53256",
        static let completedDate = "completedOn"//: "2014-12-31T00:00:00",
        static let completedHour = "completedOnHour"//: 7,
        static let completedMinute = "completedOnMinute"//: 0,
        
        static let defect = "defect"//: "2685",
        static let defectDesc = "defectDescription"//: null,
        static let defectItem = "defectItem"//: 1,
        static let defectType = "defectType"//: "MAINT",
        static let sourceCode = "sourceCode"
        
        static let ac = "ac" // DTS
        static let pn = "pn" // "          " // DTS
    }
}
