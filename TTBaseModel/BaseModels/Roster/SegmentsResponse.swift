//
//  SegmentsResponse.swift
//  NMBaseModel
//
//  Created by Remzi YILDIRIM on 13.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class SegmentsResponse: ResponseModelBase {
    // MARK: Properties
    public var items: [PlannedItem]?
    
    public required init() {
        super.init()
    }
    
    public required init(map: Map) {
        super.init(map: map)
    }
    
    // MARK: Mapping
    public override func mapping(map: Map) {
        self.items <- map[SerializationKeys.items]
    }
}

extension SegmentsResponse {
    private struct SerializationKeys {
        static let items = "ITEMS"
    }
}
