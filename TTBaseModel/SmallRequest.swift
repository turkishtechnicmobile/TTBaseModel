//
//  SmallRequest.swift
//  TTBaseModel
//
//  Created by Remzi YILDIRIM on 12.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

open class SmallRequest: RequestModelBase {
    // MARK: Properties
    public var registerID:String?
    public var status:String?
    public var updatedDate:String?
    public var ac:String?
//    public var isBeta:String?
    public var unitType:String?
    public var flightLog:String?
    public var flightLeg:Int?
    public var origin:String?
    public var fleet:String?
    public var relationCode:String?
    public var chapter:String?
    public var tranCode:String?
    public var mainWhere:String?
    public var what:String?
    public var docType:String?
    public var wo:String?
    public var isNonRoutine:Bool?
    public var employee:String?
    public var headerType:String?
    public var taskCard: String? // TODO: Remzi modele tasi
    public var pn: String? // TODO: Remzi modele tasi
    public var pnSn: String? // TODO: Remzi modele tasi

    public required init() {
        super.init()
    }
    
    public required init(map: Map) throws {
        try super.init(map: map)
    }
    
    public required init(status:String) { //getFlightList
        super.init()
        self.status = status
    }
    
    public required init(status:String, ac:String) { // wo için // AllDefect
        super.init()
        self.status = status
        self.ac = ac
    }
    
    public required init(status:String, tranCode:String) { // TranCode için
        super.init()
        self.status = status
        self.tranCode = tranCode
    }
    
    public required init(status:String, relationCode:String) { // getEmployee info için
        super.init()
        self.status = status
        self.relationCode = relationCode
    }
    
    public required init(wo:String, isNonRoutine: Bool? = nil) { // wo TaskCard için
        super.init()
        self.wo = wo
        self.isNonRoutine = isNonRoutine
    }
    
    public required init(chapter:String) { // get Section için
        super.init()
        self.chapter = chapter
    }
    
    public required init(registerID:String) { // get Profile Photo
        super.init()
        self.registerID = registerID
    }
    
    public required init(ac:String) { // get SlotList
        super.init()
        self.ac = ac
    }
    
    public required init(docType:String, ac:String) { // get AcRosterDocPath
        super.init()
        self.ac = ac
        self.docType = docType
    }
    
    public required init(unitType:String, ac:String) { // get AcUnitType
        super.init()
        self.ac = ac
        self.unitType = unitType
    }
    
    public required init(wo:String, employee:String){
        
        super.init()
        self.wo = wo
        self.employee = employee
        
    }
    
    public required init(ac:String, headerType:String){
          
          super.init()
          self.ac = ac
          self.headerType = headerType
          
      }

    public required init(leg:Int, log:String){
        super.init()
        self.flightLog = log
        self.flightLeg = leg
    }
    
    // TODO: Remzi modele tasi
    public required init(wo: String?, taskCard: String?, ac: String?, pn: String?, pnSn: String?) {
        super.init()
        self.wo = wo
        self.taskCard = taskCard
        self.ac = ac
        self.pn = pn
        self.pnSn = pnSn
    }
    
    // MARK: Mapping
    open override func dictionaryRepresentation() -> [String: Any] {
        var dictionary = super.dictionaryRepresentation()
        if let value = registerID { dictionary[SerializationKeys.registerID] = value }
        if let value = status { dictionary[SerializationKeys.status] = value }
        if let value = mainWhere { dictionary[SerializationKeys.mainWhere] = value }
        if let value = updatedDate { dictionary[SerializationKeys.updatedDate] = value }
        if let value = ac { dictionary[SerializationKeys.ac] = value }
        if let value = headerType { dictionary[SerializationKeys.headerType] = value}
//        if let value = isBeta { dictionary[SerializationKeys.isBeta] = value }
        if let value = unitType { dictionary[SerializationKeys.unitType] = value }
        if let value = flightLog { dictionary[SerializationKeys.flightLog] = value }
        if let value = flightLeg { dictionary[SerializationKeys.flightLeg] = value }
        if let value = origin { dictionary[SerializationKeys.origin] = value }
        if let value = fleet { dictionary[SerializationKeys.fleet] = value }
        if let value = relationCode { dictionary[SerializationKeys.relationCode] = value }
        if let value = chapter { dictionary[SerializationKeys.chapter] = value }
        if let value = tranCode { dictionary[SerializationKeys.tranCode] = value }
        if let value = mainWhere { dictionary[SerializationKeys.mainWhere] = value }
        if let value = what { dictionary[SerializationKeys.what] = value }
        if let value = docType { dictionary[SerializationKeys.docType] = value }
        if let value = wo { dictionary[SerializationKeys.wo] = value }
        if let value = isNonRoutine { dictionary[SerializationKeys.isNonRoutine] = value ? "Y" : "N" } // service wait null or value
        if let value = employee { dictionary[SerializationKeys.employee] = value }
        if let value = taskCard { dictionary[SerializationKeys.taskCard] = value } // TODO: Remzi modele tasi
        if let value = pn { dictionary[SerializationKeys.pn] = value } // TODO: Remzi modele tasi
        if let value = pnSn { dictionary[SerializationKeys.pnSn] = value } // TODO: Remzi modele tasi
        return dictionary
    }
}

extension SmallRequest {
    private struct SerializationKeys {
        static let registerID = "RegisterId"
        static let status = "Status"
        static let updatedDate = "updated_date"
        static let ac = "ac"
        static let headerType = "headerType"
        static let unitType = "unitType"
        static let flightLog = "flightLog"
        static let flightLeg = "flightLeg"
        static let origin = "Origin"
        static let fleet = "fleet"
        static let relationCode = "RelationCode"
        static let chapter = "chapter"
        static let tranCode = "TranCode"
        static let mainWhere = "main_where"
        static let what = "what"
        static let docType = "doc_type"
        static let wo = "wo"
        static let isNonRoutine = "NON_ROUTINE"
        static let employee = "Employee"
        static let taskCard = "TASK_CARD" // TODO: Remzi modele tasi
        static let pn = "PN" // TODO: Remzi modele tasi
        static let pnSn = "PN_SN" // TODO: Remzi modele tasi
    }
}

