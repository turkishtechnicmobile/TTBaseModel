//
//  PnMaster.swift
//  TTBaseModel
//
//  Created by Remzi YILDIRIM on 26.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation

public class PnMaster: Model {
    public var pn: String?
    public var chapter: Int?
    public var section: Int?
    public var pnDescription: String?
    public var category: String?
    public var subCategory: String?
    public var stockUom: String?
    public var maintenanceControl: String?
    
    public init() { }
}

extension PnMaster {
    enum CodingKeys: String, CodingKey {
        case pn = "pn"
        case chapter = "chapter"
        case section = "section"
        case pnDescription = "pnDescription"
        case category = "category"
        case subCategory = "subCategory"
        case stockUom = "stockUom"
        case maintenanceControl = "maintenanceControl"
    }
}

public class PnMasterResponse: Model {
    public let pnInfo: PnMaster?
    
    private enum CodingKeys: String, CodingKey {
        case pnInfo = "pnInfo"
    }
}
