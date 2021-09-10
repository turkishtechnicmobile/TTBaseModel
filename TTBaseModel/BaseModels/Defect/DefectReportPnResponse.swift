//
//  DefectReportPnResponse.swift
//  NMBaseModel
//
//  Created by Remzi YILDIRIM on 13.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation

public class DefectReportPnResponse: Model {
    public let pnList: [DefectReportPn]
    
    private enum CodingKeys: String, CodingKey {
        case pnList = "DefectReportPn"
    }
}
