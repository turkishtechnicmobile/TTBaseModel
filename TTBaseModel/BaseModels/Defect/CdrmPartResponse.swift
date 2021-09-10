//
//  CdrmPartResponse.swift
//  NMBaseModel
//
//  Created by Remzi YILDIRIM on 13.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation

public class CdrmPartResponse: Model {
    public let cdrmParts: [CdrmPart]
    
    private enum CodingKeys: String, CodingKey {
        case cdrmParts = "CdrmPart"
    }
}
