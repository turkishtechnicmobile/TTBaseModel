//
//  InventoryDetail.swift
//  NMBaseModel
//
//  Created by Remzi YILDIRIM on 26.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation

public class InventoryDetail: Model {
    public var batch: Int?
    public var location: String?
    public var installedAc: String?
    public var pn: String?
    public var sn: String?
    public var company: String?
    public var condition: String?
    public var bin: String?
    public var qtyAvailable: Double?
    public var qtyReserved: Double?
    public var qtyInTransfer: Double?
    public var qtyPendingRi: Double?
    public var qtyUs: Double?
    public var qtyInRepair: Double?
    public var qtyInRental: Double?
    public var pnModel: String?
    public var owner: String?
    
    public init() { }
}

extension InventoryDetail {
    enum CodingKeys: String, CodingKey {
        case batch = "batch"
        case location = "location"
        case installedAc = "installedAc"
        case pn = "pn"
        case sn = "sn"
        case company = "company"
        case condition = "condition"
        case bin = "bin"
        case qtyAvailable = "qtyAvailable"
        case qtyReserved = "qtyReserved"
        case qtyInTransfer = "qtyInTransfer"
        case qtyPendingRi = "qtyPendingRi"
        case qtyUs = "qtyUs"
        case qtyInRepair = "qtyInRepair"
        case qtyInRental = "qtyInRental"
        case pnModel = "pnModel"
        case owner = "owner"
    }
}

public class InventoryDetailResponse: Model {
    public let details: [InventoryDetail]
    
    private enum CodingKeys: String, CodingKey {
        case details = "inventoryDetails"
    }
}
