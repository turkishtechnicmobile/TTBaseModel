//
//  PlannedItem.swift
//  TTBaseModel
//
//  Created by Remzi YILDIRIM on 12.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper
import TTBaseApp

public class PlannedItem: Item {
    public var acType: String?
    public var acSeries: String?
    
    public var defectType: String?
    public var defect: String?
    public var defectItem: Int?
    public var defectChapter: Int?
    public var defectSection: Int?
   // var defectRestrictions : DefectResctrictions!
    
//    public var wo: Int?
//    public var woDesc: String?
//    public var pn: String?
//    public var sn: String?
//    public var taskCard: String?
//    public var taskCardDesc: String?
    public var scheduleStartDate: Date?
    public var scheduleEndDate: Date?
    
    public var plannerNote: String?
    public var turnOverNote: String?
    public var isCheckItem: Bool?
    public var otherAssignedTech: [AssignedTechnician]?
    
    required init?(map: Map) {
        super.init(map: map)
    }
    
    required init?() {
        super.init()
    }
    
    public override func mapping(map: Map) {
        super.mapping(map: map)
        
        // TODO: Remzi
//        let dateFormatter = ConstantFormatted.dateFormattedMapping()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = TTBaseDateFormatType.api.rawValue //"yyyy'-'MM'-'dd'T'HH':'mm':'ss'Z'"
        dateFormatter.timeZone = TimeZone.init(secondsFromGMT: 0)
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        
        acType <- map[SerializationKeys.acType]
        acSeries <- map[SerializationKeys.acSeries]
        defectType <- map[SerializationKeys.defectType]
        defect <- map[SerializationKeys.defect]
        defectItem <- map[SerializationKeys.defectItem]
        defectChapter <- map[SerializationKeys.defectChapter]
        defectSection <- map[SerializationKeys.defectSection]
//        wo <- map[SerializationKeys.wo]
//        woDesc <- map[SerializationKeys.woDesc]
//        taskCard <- map[SerializationKeys.taskCard]
//        taskCardDesc <- map[SerializationKeys.taskCardDesc]
//        pn <- map[SerializationKeys.pn]
//        sn <- map[SerializationKeys.sn]
   
        var tempString : String!
 
        tempString <- map[SerializationKeys.scheduleStartDate]
        
        plannerNote <- map[SerializationKeys.plannerNote]
        turnOverNote <- map[SerializationKeys.turnOverNote]
        isCheckItem <- map[SerializationKeys.isCheckItem]
      //  defectRestrictions <- map[SerializationKeys.defectRestrictions]
        
        otherAssignedTech <- map[SerializationKeys.otherAssignedTech]
        
        if tempString != nil {
            
            scheduleStartDate = dateFormatter.date(from: tempString)
        }
        
        tempString <- map[SerializationKeys.scheduleEndDate]
        
        if tempString != nil {
            
            scheduleEndDate = dateFormatter.date(from: tempString)
        }
    }
}


extension PlannedItem {
    
    private struct SerializationKeys {
        
        static let acType = "AC_TYPE"
        static let acSeries = "AC_SERIES"
        
        static let defectType = "DEFECT_TYPE"
        static let defect = "DEFECT"
        static let defectItem = "DEFECT_ITEM"
        static let defectChapter = "DEFECT_CHAPTER"
        static let defectSection = "DEFECT_SECTION"
        static let defectRestrictions = "DEFECT_RESTRICTIONS"
        
//        static let wo = "WO"
//        static let woDesc = "WO_DESC"
//        static let pn = "PN"
//        static let sn = "SN"
//        
//        static let taskCard = "TASK_CARD"
//        static let taskCardDesc = "TASK_CARD_DESC"
        
        static let scheduleStartDate = "SCHEDULE_START_ZULU"
        static let scheduleEndDate = "SCHEDULE_END_ZULU"
        
        static let plannerNote = "PLANNER_NOTES"
        static let turnOverNote = "TURNOVER_NOTES"
        static let isCheckItem = "IS_CHECK_ITEM"
        static let otherAssignedTech = "OTHER_ASSIGNED_TECHS"
    }
}

public class AssignedTechnician: Mappable {
    public var register: String?
    public var name: String?
    
    required public init?(map: Map) { }
        
    required init?() { }
        
    public func mapping(map: Map){
        register <- map[SerializationKeys.register]
        name <- map[SerializationKeys.name]
    }
}

extension AssignedTechnician {
    private struct SerializationKeys {
        static let register = "REGISTER"
        static let name = "NAME"
    }
}
