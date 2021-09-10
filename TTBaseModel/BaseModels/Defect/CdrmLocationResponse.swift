//
//  CdrmLocationResponse.swift
//  NMBaseModel
//
//  Created by Remzi YILDIRIM on 13.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation

public class CdrmLocationResponse: Model {
    public let cdrmLocations: [CdrmLocationRem]
    
    private enum CodingKeys: String, CodingKey {
        case cdrmLocations = "CdrmLocation"
    }
}
