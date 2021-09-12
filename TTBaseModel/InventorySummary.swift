//
//  InventorySummary.swift
//  TTBaseModel
//
//  Created by Remzi YILDIRIM on 26.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation

public class InventorySummary: Model {
    public var location: String?
    public var available: Double?
    public var reserved: Double?
    public var inTransfer: Double?
    public var pending: Double?
    public var us: Double?
    public var inRepair: Double?
}

extension InventorySummary {
    enum CodingKeys: String, CodingKey {
        case location = "location"
        case available = "available"
        case reserved = "reserved"
        case inTransfer = "inTransfer"
        case pending = "pending"
        case us = "us"
        case inRepair = "inRepair"
    }
}

public class InventorySummaryResponse: Model {
    public let summaries: [InventorySummary]
    
    private enum CodingKeys: String, CodingKey {
        case summaries = "sumByLocation"
    }
}
