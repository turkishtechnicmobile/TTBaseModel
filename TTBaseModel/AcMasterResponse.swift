//
//  AcMasterResponse.swift
//  TTBaseModel
//
//  Created by Remzi YILDIRIM on 13.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation

public class AcMasterResponse: Model {
    public let acMasters: [AcMaster]
    
    private enum CodingKeys: String, CodingKey {
        case acMasters = "AcMasters"
    }
    
//    required init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        self.acMasters = try container.decode([AcMaster].self, forKey: .acMasters)
//        try super.init(from: decoder)
//    }
}
