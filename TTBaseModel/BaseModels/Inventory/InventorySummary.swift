//
//  InventorySummary.swift
//  TTBaseModel
//
//  Created by Remzi YILDIRIM on 26.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class InventorySummary: Model, Mappable {
    public var location: String?
    public var available: Double?
    public var reserved: Double?
    public var inTransfer: Double?
    public var pending: Double?
    public var us: Double?
    public var inRepair: Double?
    
    public required init() { }
    
    public required init(map: Map) { }
    
    public func mapping(map: Map) {
        
        self.location <- map["location"]
        self.available <- map["available"]
        self.reserved <- map["reserved"]
        self.inTransfer <- map["inTransfer"]
        self.pending <- map["pending"]
        self.us <- map["us"]
        self.inRepair <- map["inRepair"]
    }
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

public class InventorySummaryResponse: Model , Mappable{
    public var summaries: [InventorySummary]!
    
    public required init() { }
    
    public required init(map: Map) { }
    
    public func mapping(map: Map) {
        self.summaries <- map["sumByLocation"]
    }
    
    private enum CodingKeys: String, CodingKey {
        case summaries = "sumByLocation"
    }
}
