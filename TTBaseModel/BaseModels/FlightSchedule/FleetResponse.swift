//
//  FleetResponse.swift
//  NMBaseModel
//
//  Created by Remzi YILDIRIM on 13.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation

public class FleetResponse: Model {
    public let fleets: [String]
    
    private enum CodingKeys: String, CodingKey {
        case fleets = "fleets"
    }
}
