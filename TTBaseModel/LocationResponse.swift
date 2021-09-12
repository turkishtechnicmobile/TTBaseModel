//
//  LocationResponse.swift
//  TTBaseModel
//
//  Created by Remzi YILDIRIM on 12.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class LocationResponse: ResponseModelBase {
    // MARK: Properties
    public var locations: [LocationModel]?
    
    public required init() {
        super.init()
    }
    
    public required init(map: Map) {
        super.init(map: map)
    }
    
    // MARK: Mapping
    public override func mapping(map: Map){
        super.mapping(map: map)
        self.locations <- map[SerializationKeys.locations]
    }
}

extension LocationResponse {
    private struct SerializationKeys {
        static let locations = "Locations"
    }
}

// MARK: - Model
public class LocationModel: Mappable {
    
    public var location: String!
    public var locationDesc: String!
    
    public required init() {
    }
    
    public required init(map: Map) {
    }
    
    public func mapping(map: Map) {
        location <- map[SerializationKeys.location]
        locationDesc <- map[SerializationKeys.locationDesc]
    }
}

extension LocationModel {
    private struct SerializationKeys {
        static let location = "LOCATION"
        static let locationDesc = "LOCATION_DESCRIPTION"
    }
}
