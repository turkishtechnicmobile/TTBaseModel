//
//  DefectCategoryCdrmConfigResponse.swift
//  TTBaseModel
//
//  Created by Remzi YILDIRIM on 13.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation

public class DefectCategoryCdrmConfigResponse: Model {
    public let configs: [DefectCategoryCdrmConfig]

    private enum CodingKeys: String, CodingKey {
        case configs = "CabinDefectCategoryConfig"
    }
}
