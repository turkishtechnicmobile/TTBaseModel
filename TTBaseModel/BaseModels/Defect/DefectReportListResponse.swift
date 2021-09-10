//
//  DefectReportListResponse.swift
//  NMBaseModel
//
//  Created by Remzi YILDIRIM on 13.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation

public class DefectReportListResponse: Model {
    public let defectReports: [Defect]
    
    private enum CodingKeys: String, CodingKey {
        case defectReports = "DefectReport"
    }
}

public class DefectReportResponse: Model {
    public var defectReport: Defect?
    
    private enum CodingKeys: String, CodingKey {
        case defectReport = "DefectReport"
    }
}

public class DefectReportDeferResponse: Model {
    public let mddr: String?
    
    private enum CodingKeys: String, CodingKey {
        case mddr = "Mddr"
    }
}
