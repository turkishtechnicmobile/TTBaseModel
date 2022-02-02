//
//  RequestPicklistCreate.swift
//  TTBaseModel
//
//  Created by Nazif MASMANACI on 18.06.2021.
//  Copyright © 2021 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper


public class RequestPicklistCreate: RequestModelBase {

    public var inventoryLocation: String?
    public var wo: Int?
    public var ac, taskCard, requireBy: String?
    public var pn,sn:String?
    public var requireHour, requireMinute: Int?
    public var deliveryLocation, deliverySite: String?
    public var priority, inventoryType: String?
    
    public required init() {
        super.init()
    }

    public required init(map: Map) throws {
        try super.init(map: map)
    }
    
// MARK: Mapping
    open override func dictionaryRepresentation() -> [String: Any] {
        var dictionary = super.dictionaryRepresentation()
        
        if let value = inventoryLocation { dictionary[SerializationKeys.inventoryLocation] = value }
        if let value = wo {                dictionary[SerializationKeys.wo] = value }
        if let value = ac  {               dictionary[SerializationKeys.ac] = value }
        if let value = taskCard  {         dictionary[SerializationKeys.taskCard] = value }
        if let value = pn  {    dictionary[SerializationKeys.pn] = value }
        if let value = sn  {    dictionary[SerializationKeys.sn] = value }
        
        if let value = requireBy  {        dictionary[SerializationKeys.requireBy] = value }
        if let value = requireHour  {      dictionary[SerializationKeys.requireHour] = value }
        if let value = requireMinute  {    dictionary[SerializationKeys.requireMinute] = value }
        if let value = deliveryLocation  { dictionary[SerializationKeys.deliveryLocation] = value }
        if let value = deliverySite  {     dictionary[SerializationKeys.deliverySite] = value }
        if let value = priority  {         dictionary[SerializationKeys.priority] = value }
        if let value = inventoryType  {    dictionary[SerializationKeys.inventoryType] = value }

        return dictionary
    }
    
    private struct SerializationKeys {
        
        static let inventoryLocation = "inventoryLocation"
        static let binTransfer = "binTransfer"
        static let wo = "wo"
        static let ac = "ac"
        static let taskCard = "taskCard"
        static let pn = "pn"
        static let sn = "pnSn"
        static let requireBy = "requireBy"
        static let requireHour = "requireHour"
        static let requireMinute = "requireMinute"
        static let deliveryLocation = "deliveryLocation"
        static let deliverySite = "deliverySite"
        static let priority = "priority"
        static let inventoryType = "inventoryType"
        static let userID = "UserId"
    }
}

public class RequestPicklistSmall:RequestModelBase {
    
    public var baseLocation: String?
    public var location:String?
    public var pn:String?
    
    public required init() {
        super.init()
    }

    public required init(map: Map) throws {
        try super.init(map: map)
    }
    
// MARK: Mapping
    open override func dictionaryRepresentation() -> [String: Any] {
        var dictionary = super.dictionaryRepresentation()
        
        if let value = baseLocation { dictionary[SerializationKeys.baseLocation] = value }
        if let value = location { dictionary[SerializationKeys.location] = value }
        if let value = pn { dictionary[SerializationKeys.pn] = value }

        return dictionary
    }
    
    private struct SerializationKeys {
        
        static let baseLocation = "BaseLocation"
        static let location = "Location"
        static let pn = "pn"
    }
    
}

public class RequestPicklistHistoryModel: RequestModelBase {

    public var wo: Int?
    public var ac, taskCard, createdBy: String?
    public var pn, sn, status: String?

    public required init() {
        super.init()
    }

    public required init(map: Map) throws {
        try super.init(map: map)
    }
    
// MARK: Mapping
    open override func dictionaryRepresentation() -> [String: Any] {
        var dictionary = super.dictionaryRepresentation()
        
        if let value = wo {         dictionary[SerializationKeys.wo] = value }
        if let value = ac  {        dictionary[SerializationKeys.ac] = value }
        if let value = taskCard  {  dictionary[SerializationKeys.taskCard] = value }
        if let value = createdBy {  dictionary[SerializationKeys.createdBy] = value }
        if let value = status  {    dictionary[SerializationKeys.status] = value }
        if let value = pn  {        dictionary[SerializationKeys.pn] = value }
        if let value = sn  {        dictionary[SerializationKeys.sn] = value }

        return dictionary
    }
    
    private struct SerializationKeys {
        
        static let wo = "Wo"
        static let ac = "Ac"
        static let taskCard = "TaskCard"
        static let createdBy = "CreatedBy"
        static let status = "Status"
        static let pn = "Pn"
        static let sn = "PnSn"
    }
}


public class RequestPicklistInUse:RequestModelBase {
    
    public var picklist: Int?
    public var inUse: Bool?
    
    public required init() {
        super.init()
    }

    public required init(map: Map) throws {
        try super.init(map: map)
    }
    
    open override func dictionaryRepresentation() -> [String: Any] {
        var dictionary = super.dictionaryRepresentation()
        
        if let value = picklist { dictionary["picklist"] = value }
        if let value = inUse  {   dictionary["inUse"] = value }
        return dictionary
    }
}
