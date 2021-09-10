//
//  CreateOrStartRequest.swift
//  NMBaseModel
//
//  Created by Remzi YILDIRIM on 12.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class CreateOrStartRequest: RequestModelBase {
    // MARK: Properties
    public var registerID:String?
    public var flight:String?
    public var flightScheduleDate:Date?
    public var taskDesc:String?
    public var department:String?
    public var arrivalStation:String?
    public var departForStation:String?
    public var estimatedBeginDate:Date?
    public var estimatedEndDate:Date?
    public var estimatedTimeInMins:Int?
    public var leg:Int?
    public var ac:String?
    public var note:String?
    public var opType:Int?
    public var isBeta:String?
    
    public required init() {
        super.init()
    }
    
     public required init(map: Map) throws {
         try super.init(map: map)
     }
    
    public required init(registerID:String,
                         flight:String,
                         flightScheduleDate:Date,
                         taskDesc:String,
                         department:String,
                         arrivalStation:String,
                         departForStation:String,
                         estimatedBeginDate:Date,
                         estimatedEndDate:Date,
                         estimatedTimeInMins:Int,
                         leg:Int,
                         ac:String,
                         note:String,
                         opType:Int,
                         isBeta:String) {
        
        super.init()
        
        self.registerID = registerID
        self.flight = flight
        self.flightScheduleDate = flightScheduleDate
        
        self.taskDesc = taskDesc
        self.department = department
        self.arrivalStation = arrivalStation
        self.departForStation = departForStation
        self.estimatedBeginDate = estimatedBeginDate
        self.estimatedEndDate = estimatedEndDate
        
        self.estimatedTimeInMins = estimatedTimeInMins
        self.leg = leg
        
        self.ac = ac
        self.note = note
        self.opType = opType
        self.isBeta = isBeta
    }
    
    
    // MARK: Mapping
    public override func dictionaryRepresentation() -> [String: Any] {
        var dictionary = super.dictionaryRepresentation()
        if let value = registerID { dictionary[SerializationKeys.registerID] = value }
        if let value = flight { dictionary[SerializationKeys.flight] = value }
        if let value = flightScheduleDate { dictionary[SerializationKeys.flightScheduleDate] = value }
        if let value = taskDesc { dictionary[SerializationKeys.taskDesc] = value }
        
        if let value = department { dictionary[SerializationKeys.department] = value }
        if let value = arrivalStation { dictionary[SerializationKeys.arrivalStation] = value }
        if let value = departForStation { dictionary[SerializationKeys.departForStation] = value }
        if let value = estimatedBeginDate { dictionary[SerializationKeys.estimatedBeginDate] = value }
        if let value = estimatedEndDate { dictionary[SerializationKeys.estimatedEndDate] = value }
        if let value = estimatedTimeInMins { dictionary[SerializationKeys.estimatedTimeInMins] = value }
        if let value = leg { dictionary[SerializationKeys.leg] = value }
        if let value = ac { dictionary[SerializationKeys.ac] = value }
        
        if let value = note { dictionary[SerializationKeys.note] = value }
        if let value = opType { dictionary[SerializationKeys.opType] = value }
        if let value = isBeta { dictionary[SerializationKeys.isBeta] = value }
        return dictionary
    }
}

extension CreateOrStartRequest {
    private struct SerializationKeys {
        static let registerID = "Register"
        static let flight = "Flight"
        static let flightScheduleDate = "FlightScheduleDateZulu"
        static let taskDesc = "TaskDesc"
        static let department = "Department"
        static let arrivalStation = "ArrivalStation"
        static let departForStation = "DepartsForStation"
        static let estimatedBeginDate = "EstimatedSlotBeginZulu"
        static let estimatedEndDate = "EstimatedSlotEndZulu"
        static let estimatedTimeInMins = "estimatedTimeInMins"
        static let leg = "Leg"
        static let ac = "Ac"
        static let note = "Note"
        static let opType = "OpType"
        static let isBeta = "isTest"
    }
}
