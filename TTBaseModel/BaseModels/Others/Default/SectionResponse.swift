//
//  SectionResponse.swift
//  NMBaseModel
//
//  Created by Remzi YILDIRIM on 13.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation

public class SectionResponse: Model {
    public let sections: [Section]
    
    private enum CodingKeys: String, CodingKey {
        case sections = "Sections"
    }
    
//    required init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        self.sections = try container.decode([Section].self, forKey: .sections)
//        try super.init(from: decoder)
//    }
}
