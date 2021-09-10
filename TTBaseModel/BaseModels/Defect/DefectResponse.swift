//
//  DefectResponse.swift
//  NMBaseModel
//
//  Created by Remzi YILDIRIM on 12.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class DefectResponse: Mappable {
    // MARK: Properties
    public var defects:[DefectModel]?
    
    public required init() {
    }
    
    public required init(map: Map) {
    }
    
    // MARK: Mapping
    public func mapping(map: Map) {
        self.defects <- map[SerializationKeys.defects]
    }
}

extension DefectResponse {
    private struct SerializationKeys {
        static let defects = "DefectReport"
    }
}

// MARK: -
public class DefectModel: Mappable {
    public var defect: String!
    public var defectType: String!
    public var defectItem: Int!
    public var defectDescription: String?
    public var taskcard: String?
    public var chapter: Int!
    public var section: Int!
    public var reportedDate:String! 
    public var reportedHour:Int! = 0
    public var reportedMinute:Int! = 0
    
    public required init() {
    }
    
    public required init(map: Map) {
    }
    
    public func mapping(map: Map) {
        defect <- map[SerializationKeys.defect]
        defectType <- map[SerializationKeys.defectType]
        defectItem <- map[SerializationKeys.defectItem]
        defectDescription <- map[SerializationKeys.defectDescription]
        taskcard <- map[SerializationKeys.taskcard]
        chapter <- map[SerializationKeys.chapter]
        section <- map[SerializationKeys.section]
        reportedDate <- map[SerializationKeys.reportedDate]
        reportedHour <- map[SerializationKeys.reportedHour]
        reportedMinute <- map[SerializationKeys.reportedMinute]
    }
}

extension DefectModel {
    private struct SerializationKeys {
        static let defect = "DEFECT"
        static let defectType = "DEFECT_TYPE"
        static let defectItem = "DEFECT_ITEM"
        static let defectDescription = "DEFECT_DESCRIPTION"
        static let taskcard = "TASK_CARD"
        static let chapter = "CHAPTER"
        static let section = "SECTION"
        static let reportedDate = "REPORTED_DATE" // MCAbin icin
        static let reportedHour = "REPORTED_HOUR"
        static let reportedMinute = "REPOTED_MINUTE"
    }
}
