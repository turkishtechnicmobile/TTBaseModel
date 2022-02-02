//
//  InventoryControl.swift
//  TTBaseModel
//
//  Created by Remzi YILDIRIM on 26.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation

public class InventoryControl: Model {
    public var batch: Int?
    public var goodsRcvdBatch: Int?
    public var pn: String?
    public var sn: String?
    public var scheduleHours: Int?
    public var scheduleCycles: Int?
    public var scheduleDays: Int?
    public var scheduleDate: Date?
    public var actualDays: Int?
    public var days: Int?
    public var hours: Int?
    public var minutes: Int?
    public var cycles: Int?
    public var control: String?
    public var remainingDays: Int?
    public var resetDate: Date?
    public var createdBy: String?
    public var createdDate: Date?
    public var modifiedBy: String?
    public var modifiedDate: Date?
    
    public init() { }
}

extension InventoryControl {
    enum CodingKeys: String, CodingKey {
        case batch = "batch"
        case goodsRcvdBatch = "goodsRcvdBatch"
        case pn = "pn"
        case sn = "sn"
        case scheduleHours = "scheduleHours"
        case scheduleCycles = "scheduleCycles"
        case scheduleDays = "scheduleDays"
        case scheduleDate = "scheduleDate"
        case actualDays = "actualDays"
        case days = "days"
        case hours = "hours"
        case minutes = "minutes"
        case cycles = "cycles"
        case control = "control"
        case remainingDays = "remainingDays"
        case resetDate = "resetDate"
        case createdBy = "createdBy"
        case createdDate = "createdDate"
        case modifiedBy = "modifiedBy"
        case modifiedDate = "modifiedDate"
    }
}

//public class InventoryCycle: Model {
//    public var batch: Int?
//    public var pn: String?
//    public var sn: String?
//    public var days: Int?
//    public var hours: Int?
//    public var minutes: Int?
//    public var cycles: Int?
//    public var control: String?
//
//}
//
//extension InventoryCycle {
//    enum CodingKeys: String, CodingKey {
//        case batch = "batch"
//        case pn = "pn"
//        case sn = "sn"
//        case days = "days"
//        case hours = "hours"
//        case minutes = "minutes"
//        case cycles = "cycles"
//        case control = "control"
//
//    }
//}

public class InventoryControlResponse: Model {
    public let controls: [InventoryControl]
    public let cycles: [InventoryControl]

    private enum CodingKeys: String, CodingKey {
        case controls = "inventoryControls"
        case cycles = "inventoryCycles"
    }
}
