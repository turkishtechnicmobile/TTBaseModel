//
//  FleetsResponse.swift
//  NMBaseModel
//
//  Created by Remzi YILDIRIM on 12.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class FleetsResponse: ResponseModelBase {
    
    // MARK: Properties
    public var fleets:[String]?
    
    public required init() {
        super.init()
    }
    
    public required init(map: Map) {
        super.init(map: map)
    }
    
    // MARK: Mapping
    public override func mapping(map: Map){
        super.mapping(map: map)
        self.fleets <- map[SerializationKeys.fleets]
    }
}

extension FleetsResponse {
    private struct SerializationKeys {
        static let fleets = "fleets"
    }
}
