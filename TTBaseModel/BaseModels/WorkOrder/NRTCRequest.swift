//
//  NRTCRequest.swift
//  NMBaseModel
//
//  Created by Remzi YILDIRIM on 12.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class NRTCRequest: RequestModelBase {
    // MARK: Properties
    public var wo:Int!
    public var tc:String!
    public var tcDesc:String?
    
    public var defect:String?
    public var defectType:String?
    public var defectItem:Int?
    
    public var compBy:String?
    public var compDate:String?
    public var compHour:Int!
    public var compTime:Int!
    
    public var ac:String?
    public var modifyBy:String?
    public var createdBy:String?
    
    public var pn:String?
    public var pnsn:String?
    public var chapter:Int!
    public var section:Int!
    public var location:String?
    
    public var status:String!
    public var sourceCode:String!
    public var isDefectClose:Bool?
    public var resolutionCategory:String?
    public var scheduleTC:String?
    public var workArea:String?
    
    public required init() {
        super.init()
    }
    
    public required init(map: Map) throws {
        try super.init(map: map)
    }
    
    public required init(isBeta:String) {
        super.init()
    }
    
    public required init(createdBy:String,  // add
                         wo:String,
                         tcDesc:String,
                         defect:String?,
                         defectType:String?,
                         defectItem:Int?,
                         compBy:String,
                         compDate:String,
                         compHour:Int,
                         compTime:Int,
                         ac:String,
                         pn:String?,
                         pnsn:String?,
                         chapter:Int,
                         section:Int,
                         location:String,
                         sourceCode:String!,
                         status:String,
                         scheduleTC:String? = nil,
                         workArea:String? = nil) {
        super.init()
        
        self.createdBy = createdBy
        self.wo = Int(wo) ?? 0
        self.tcDesc = tcDesc
        
            self.defect = defect
            self.defectType = defectType
            self.defectItem = defectItem
      
        self.compBy = compBy
        self.compDate = compDate
        self.compHour = compHour
        self.compTime = compTime
        self.ac = ac
        self.pn = pn
        self.pnsn = pnsn
        self.chapter = chapter
        self.section = section
        self.location = location
        self.sourceCode = sourceCode
        self.status = status
        self.scheduleTC = scheduleTC
        self.workArea = workArea
    }
    
    
    
    public required init(modifyBy:String, // update
                         wo:String,
                         tc:String,
                         tcDesc:String,
                         defect:String?,
                         defectType:String?,
                         defectItem:Int?,
                         compBy:String,
                         compDate:String,
                         compHour:Int,
                         compTime:Int,
                         pn:String?,
                         pnsn:String?,
                         location:String,
                         sourceCode:String!,
                         status:String,
                         scheduleTC:String? = nil,
                         workArea:String? = nil) {
        super.init()
        
        self.modifyBy = modifyBy
        self.wo = Int(wo) ?? 0
        self.tc = tc
        self.tcDesc = tcDesc
        self.defect = defect
        self.defectType = defectType
        self.defectItem = defectItem
        
        self.compBy = compBy
        self.compDate = compDate
        self.compHour = compHour
        self.compTime = compTime

        self.pn = pn
        self.pnsn = pnsn
        self.location = location
        self.sourceCode = sourceCode
        self.status = status
        self.scheduleTC = scheduleTC
        self.workArea = workArea

    }
    
    
    public required init(modifyBy:String, // close
                         wo:String,
                         tc:String,
                         pn:String?,
                         pnsn:String?,
                         compDate:String,
                         compHour:Int,
                         compTime:Int,
                         resolutionCategory:String?,
                         location:String,
                         isDefectClose:Bool) {
        super.init()
        
        self.modifyBy = modifyBy
        self.wo = Int(wo) ?? 0
        self.tc = tc
        self.pn = pn
        self.pnsn = pnsn
        self.compDate = compDate
        self.compHour = compHour
        self.compTime = compTime
        self.resolutionCategory = resolutionCategory
        self.location = location
        self.isDefectClose = isDefectClose
    }
    
    // MARK: Mapping
    open override func dictionaryRepresentation() -> [String: Any] {
        var dictionary = super.dictionaryRepresentation()
        if let value = wo { dictionary[SerializationKeys.wo] = value }
        if let value = tc { dictionary[SerializationKeys.tc] = value }
        if let value = tcDesc { dictionary[SerializationKeys.tcDesc] = value }
        if let value = defect { dictionary[SerializationKeys.defect] = value }
        if let value = defectType { dictionary[SerializationKeys.defectType] = value }
        
        if let value = defectItem { dictionary[SerializationKeys.defectItem] = value }
        if let value = compBy { dictionary[SerializationKeys.compBy] = value }
        if let value = compDate { dictionary[SerializationKeys.compDate] = value }
        if let value = compHour { dictionary[SerializationKeys.compHour] = value }
        if let value = compTime { dictionary[SerializationKeys.compTime] = value }
        if let value = ac { dictionary[SerializationKeys.ac] = value }
        
        if let value = modifyBy { dictionary[SerializationKeys.modifyBy] = value }
        if let value = createdBy { dictionary[SerializationKeys.createdBy] = value }
        
        if let value = pn { dictionary[SerializationKeys.pn] = value }
        if let value = pnsn { dictionary[SerializationKeys.pnsn] = value }
        if let value = chapter { dictionary[SerializationKeys.chapter] = value }
        if let value = section { dictionary[SerializationKeys.section] = value }
        if let value = location { dictionary[SerializationKeys.location] = value }
        if let value = status { dictionary[SerializationKeys.status] = value }
        if let value = sourceCode { dictionary[SerializationKeys.sourceCode] = value }
        if let value = isDefectClose { dictionary[SerializationKeys.isDefectClose] = value }
        if let value = resolutionCategory { dictionary[SerializationKeys.resolutionCategory] = value }
        if let value = scheduleTC { dictionary[SerializationKeys.scheduleTC] = value }
        if let value = workArea { dictionary[SerializationKeys.workArea] = value }
        return dictionary
    }
}

extension NRTCRequest {
    private struct SerializationKeys {
        static let wo = "wo"
        static let tc = "task_card" // update
        static let tcDesc = "task_card_description"
        static let defect = "defect"//:"1143303" ,
        static let defectType = "defect_type"//: "MAINT",
        static let defectItem = "defect_item" //:1 ,
        static let compBy = "completed_by"//:"E53256" ,
        static let compDate = "completed_on"//: "31-DEC-14",
        static let compHour = "completed_on_hour"//:7 ,
        static let compTime = "completed_on_minute"//: 0,
        static let ac = "ac" //add
        static let modifyBy = "modified_by" //update
        static let createdBy = "created_by" // add
        static let pn = "pn"//: "",
        static let pnsn = "pn_sn"//:"",
        static let chapter = "chapter"//:25 , //add
        static let section = "section"//: 1, // add
        static let location = "completed_station"
        static let status = "status" //"OPEN" // update
        static let sourceCode = "source_code"
        static let isDefectClose = "is_defect_closed"
        static let resolutionCategory = "resolution_category"
        static let scheduleTC = "schedule_task_card"
        static let workArea = "work_area"
    }
}
