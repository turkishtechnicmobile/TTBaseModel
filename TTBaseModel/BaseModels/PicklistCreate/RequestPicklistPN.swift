//
//  RequestPicklistPN.swift
//  TTBaseModel
//
//  Created by Nazif MASMANACI on 23.06.2021.
//  Copyright © 2021 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class RequestPicklistPN: RequestModelBase {
    
    public var wo: Int?
    public var picklist, picklistLine: Int? // line parametresi delete işlemi için kullanılmakta.
    public var pn: String?
    public var qty: Double?
    public var inventoryLocation, taskCard: String?

    public required init() {
        super.init()
    }

    public required init(map: Map) throws {
        try super.init(map: map)
    }
    
// MARK: Mapping
    open override func dictionaryRepresentation() -> [String: Any] {
        var dictionary = super.dictionaryRepresentation()
        
        if let value = wo {                dictionary[SerializationKeys.wo] = value }
        if let value = picklist  {         dictionary[SerializationKeys.picklist] = value }
        if let value = picklistLine  {     dictionary[SerializationKeys.picklistLine] = value }
        if let value = pn  {               dictionary[SerializationKeys.pn] = value }
        if let value = qty  {              dictionary[SerializationKeys.qty] = value }
        if let value = inventoryLocation { dictionary[SerializationKeys.inventoryLocation] = value }
        if let value = taskCard  {         dictionary[SerializationKeys.taskCard] = value }

        return dictionary
    }
    
    private struct SerializationKeys {
        
        static let picklist = "Picklist"
        static let pn = "Pn"
        static let qty = "Qty"
        static let inventoryLocation = "InventoryLocation"
        static let taskCard = "TaskCard"
        static let wo = "Wo"
        static let picklistLine = "PicklistLine"
    }
}
