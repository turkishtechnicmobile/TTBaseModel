//
//  ManHourRequest.swift
//  TTBaseModel
//
//  Created by Remzi YILDIRIM on 12.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class ManHourRequest: RequestModelBase {
    // MARK: Properties
    public var id: String?
    public var wo: Int!
    public var taskCard: String!
    public var skill: String!
    public var startHour: Int!
    public var startMinute: Int!
    public var endHour: Int!
    public var endMinute: Int!
    public var inputHour: Int!
    public var inputMinute: Int!
    public var employee: String!
    public var tranDate: String!
    public var pn: String?
    public var sn: String?
    public var interfaceType: String! = "MOBILE"
    
    public required init() {
        super.init()
    }
    
 
    
    public required init(id:String) {
        super.init()
        self.id = id
    } // delete
    
    public required init(wo:Int,taskCard:String,pn:String?, sn:String?) {
        super.init()
        self.wo = wo
        self.taskCard = taskCard
        self.pn = pn
        self.sn = sn
    } // get List
    
    public required init(id:String,
                         sHour:Int,sMinute:Int,
                         eHour:Int,eMinute:Int,
                         iHour:Int,iMinute:Int, tranDate:String) {
        super.init()
        self.id = id
        self.tranDate = tranDate
        self.startHour = sHour
        self.startMinute = sMinute
        self.endHour = eHour
        self.endMinute = eMinute
        self.inputHour = iHour
        self.inputMinute = iMinute
    } // update
    
    public required init(wo:Int,taskCard:String,skill:String,
                         sHour:Int,sMinute:Int,
                         eHour:Int,eMinute:Int,
                         iHour:Int,iMinute:Int, pn:String?, sn:String?, employee:String, tranDate:String) {
        super.init()
        self.wo = wo
        self.taskCard = taskCard
        self.skill = skill
        self.startHour = sHour
        self.startMinute = sMinute
        self.endHour = eHour
        self.endMinute = eMinute
        self.inputHour = iHour
        self.inputMinute = iMinute
        self.employee = employee
        self.tranDate = tranDate
        self.pn = pn
        self.sn = sn
    } // Add
    
    public required init(map: Map) throws {
        try super.init(map: map)
    }
    
    // MARK: Mapping
    open override func dictionaryRepresentation() -> [String: Any] {
        
        var dictionary = super.dictionaryRepresentation()
        if let value = id { dictionary[SerializationKeys.id] = value }
        if let value = wo { dictionary[SerializationKeys.wo] = value }
        if let value = taskCard { dictionary[SerializationKeys.taskCard] = value }
        if let value = skill { dictionary[SerializationKeys.skill] = value }
        if let value = startHour { dictionary[SerializationKeys.startHour] = value }
        if let value = startMinute { dictionary[SerializationKeys.startMinute] = value }
        if let value = endHour { dictionary[SerializationKeys.endHour] = value }
        if let value = endMinute { dictionary[SerializationKeys.endMinute] = value }
        if let value = employee { dictionary[SerializationKeys.employee] = value }
        if let value = tranDate { dictionary[SerializationKeys.tranDate] = value }
        if let value = pn { dictionary[SerializationKeys.pn] = value }
        if let value = sn { dictionary[SerializationKeys.sn] = value }
        if let value = interfaceType { dictionary[SerializationKeys.interfaceType] = value }
        if let value = inputHour { dictionary[SerializationKeys.inputHour] = value }
        if let value = inputMinute { dictionary[SerializationKeys.inputMinute] = value }
        
        return dictionary
    }
}

extension ManHourRequest {
    private struct SerializationKeys {
        static let id = "wo_actual_transaction"
        static let wo = "wo"
        static let taskCard = "task_card"
        static let skill = "skill"
        static let startHour = "start_hour"
        static let startMinute = "start_minute"
        static let endHour = "end_hour"
        static let endMinute = "end_minute"
        static let employee = "employee"
        static let tranDate = "transaction_date"
        static let pn  = "pn"
        static let sn = "sn"
        static let interfaceType = "interface_transfer_by"
        static let inputHour = "hours"
        static let inputMinute = "minutes"
    }
}
