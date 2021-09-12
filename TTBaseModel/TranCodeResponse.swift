//
//  TranCodeResponse.swift
//  TTBaseModel
//
//  Created by Remzi YILDIRIM on 13.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation

public class TranCodeResponse: Model {
    public let tranCodes: [TranCode]
    
    private enum CodingKeys: String, CodingKey {
        case tranCodes = "TranCodes"
    }
    
//    required init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        self.tranCodes = try container.decode([TranCode].self, forKey: .tranCodes)
//        try super.init(from: decoder)
//    }
}
