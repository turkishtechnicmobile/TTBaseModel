//
//  LocationResponseRem.swift
//  NMBaseModel
//
//  Created by Remzi YILDIRIM on 13.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation

public class LocationResponseRem: Model {
    public let locations: [Location]
    
    private enum CodingKeys: String, CodingKey {
        case locations = "Locations"
    }
    
//    required init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        self.locations = try container.decode([Location].self, forKey: .locations)
//        try super.init(from: decoder)
//    }
}
