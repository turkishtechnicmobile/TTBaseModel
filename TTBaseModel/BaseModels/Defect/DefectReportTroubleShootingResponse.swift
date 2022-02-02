//
//  DefectReportTroubleShootingResponse.swift
//  TTBaseModel
//
//  Created by Remzi YILDIRIM on 13.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation

public class DefectReportTroubleShootingResponse: Model {
    public let troubleShootings: [DefectReportTroubleShooting]
    
    private enum CodingKeys: String, CodingKey {
        case troubleShootings = "DefectReportTroubleShooting"
    }
}
