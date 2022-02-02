//
//  Location.swift
//  TTBaseModel
//
//  Created by Remzi YILDIRIM on 13.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class Location: Mappable, Model {
    public var location : String!
    public var locationDescription : String?
    
    public required init?(map: Map) { }
    
    required init?() { }
    
    public init(location: String, description: String?) {
        self.location = location
        self.locationDescription = description
    }
    
    public func mapping(map: Map){
        location <- map["LOCATION"]
        locationDescription <- map["LOCATION_DESCRIPTION"]
    }
}

extension Location {
    enum CodingKeys: String, CodingKey {
        case location = "LOCATION"
        case locationDescription = "LOCATION_DESCRIPTION"
    }
}

extension Location {
    public class func sortMostUsed(locations: [Location]) -> [Location] {
        var allLocation = locations
        var topLocations: [Location] = []
        // TODO: Remzi
//        Constants.mostUsedLocations.forEach {
        ["IST", "ISL", "SAW", "ESB"].forEach {
            let location = $0
            if let findedIndex = allLocation.firstIndex(where: { $0.location == location }) {
                topLocations.append(allLocation.remove(at: findedIndex))
            }
        }
        return topLocations + allLocation
    }
}
