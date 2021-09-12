//
//  Enums.swift
//  TTBaseModel
//
//  Created by Remzi YILDIRIM on 15.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation

public enum HttpMethod: String {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case remove = "REMOVE"
}

public enum TranCodeType: String {
    case defectType = "DEFECTTYPE"
    case defectCategory = "DEFECTCATEGORY"
    case flightPhase = "FLIGHT/PHASE"
    case `defer` = "DEFER"
    case deferCategory = "DEFER/CATEGORY"
    case capabilityArea = "CAPABILITYAREA"
    case planningDepartment = "PLANNINGDEPT"
    case planningSubDepartment = "PLANNINGSUBDEPT"
    case melCategory = "MEL"
    case resolutionCategory = "RESOLUTIONCATEGORY"
    case nrtcSourceCode = "NRTC/SOURCECODE"
    case seatSeverity = "SEATSEVERITY"
}

public enum TableViewState {
    case loading
    case populate
    case empty
    case error
}

public enum ErrorState: Error {
    case idle
    case warning(title: String?, message: String?)
    case error(title: String?, message: String?)
}

public enum BarActionStatus {
    case add
    case create
    case update
    case search
    
    public func title() -> String {
        switch self {
        case .add:
            return "ADD"
        case .create:
            return "SAVE"
        case .update:
            return "UPDATE"
        case .search:
            return "SEARCH"
        }
    }
}
