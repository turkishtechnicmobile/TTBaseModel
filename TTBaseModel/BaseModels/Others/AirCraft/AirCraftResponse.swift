//
//  AirCraftResponse.swift
//  NMBaseModel
//
//  Created by Remzi YILDIRIM on 13.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class AirCraftResponse: ResponseModelBase {
    // MARK: Properties
    public var airCrafts: [AirCraftModel]?
    
    public required init() {
        super.init()
    }
    
    public required init(map: Map) {
        super.init(map: map)
    }
    
    // MARK: Mapping
    public override func mapping(map: Map) {
        self.airCrafts <- map[SerializationKeys.airCrafts]
    }
}

extension AirCraftResponse {
    private struct SerializationKeys {
        static let airCrafts = "aircrafts"
    }
}


public class AirCraftModel: Mappable {
    public var ac : String!
    
    public required init?(map: Map) { }
    
    required init?() { }
    
    public func mapping(map: Map){
        ac <- map["ac"]
    }
}
