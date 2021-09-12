//
//  DTSArchiveResponseModel.swift
//  TTBaseModel
//
//  Created by Burhan on 15.10.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class DTSArchiveResponseModel: Mappable {
    // MARK: Properties
    public var workOrders: [WoItem]?
    
    public required init() {
    }
    
    public required init(map: Map) {
    }
    
    // MARK: Mapping
    public func mapping(map: Map) {
        self.workOrders <- map[SerializationKeys.workOrders]
    }

}

extension DTSArchiveResponseModel {
    private struct SerializationKeys {
        static let workOrders = "workOrders"
    }
}
