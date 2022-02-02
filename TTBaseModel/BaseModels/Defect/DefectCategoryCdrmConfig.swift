//
//  DefectCategoryCdrmConfig.swift
//  TTBaseModel
//
//  Created by Remzi YILDIRIM on 13.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation

public class DefectCategoryCdrmConfig: Model {
    public let defectCategory: String?
    public let addStatus: Int?
    public let editStatus: Int?
}

extension DefectCategoryCdrmConfig {
    enum CodingKeys: String, CodingKey {
        case defectCategory = "DEFECT_CATEGORY"
        case addStatus = "ADD_STATUS"
        case editStatus = "EDIT_STATUS"
    }
}


// TODO: Move to class
public class WorkOrder: Model {
    public var ac: String?
    public var wo: Int?
    public var woCategory: String?
    public var woDescription: String?
    public var status: String?
    
    public init() { }
}

extension WorkOrder {
    enum CodingKeys: String, CodingKey {
        case ac = "AC"
        case wo = "WO"
        case woCategory = "WO_CATEGORY"
        case woDescription = "WO_DESCRIPTION"
        case status = "STATUS"
    }
}

public class WorkOrderResponse: Model {
    public let woAll: [WorkOrder]
}

extension WorkOrderResponse {
    private enum CodingKeys: String, CodingKey {
        case woAll = "WoAll"
    }
}
