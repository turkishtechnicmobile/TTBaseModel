//
//  UMSModel.swift
//  NMBaseModel
//
//  Created by MnzfM on 15.12.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper


public enum HamburgerMenu:String {
    
    case DEFECTREPORT = "DEFECTREPORT"
    case WORKORDER = "WORKORDER"
    case FLIGHTSCHEDULE = "FLIGHTSCHEDULES"
    case DEFECTREPORTARCHIVE = "DEFECTREPORTARCHIVE"
    case ASSIGNEDITEM = "ASSIGNEDITEMS"
    case ACUNIT = "ACUNITS"
    case INVENTORY = "INVENTORY"
    case DTSWORKORDER = "DTSWORKORDER"
    case DTSARCHIVE = "DTSARCHIVE"
    case DTSCUSTOMER = "DTSCUSTOMER"
    case LOPA = "LOPA"
    case EPCLOPA = "EPCLOPA"
    case MEETGREET = "MEETGREET"
    
    case EMPTY = ""
    
    public func getVisibleName() -> String {
        
        switch self {
        case .DEFECTREPORT: return "DEFECT REPORT"
        case .WORKORDER: return "WORK ORDER"
        case .FLIGHTSCHEDULE: return "FLIGHT SCHEDULES"
        case .DEFECTREPORTARCHIVE: return "DEFECT REPORT ARCHIVE"
        case .ASSIGNEDITEM: return "ASSIGNED ITEMS"
        case .ACUNIT: return "A/C UNITS"
        case .INVENTORY: return "INVENTORY"
        case .DTSWORKORDER: return "DTS WORK ORDER"
        case .DTSARCHIVE: return "DTS ARCHIVE"
        case .DTSCUSTOMER: return "CUSTOMER"
        case .EMPTY: return "EMPTY"
            
        case .LOPA: return "CABIN DEFECT"
        case .EPCLOPA: return "PN CATALOG"
        case .MEETGREET: return "MEET AND GREET"
            
        }
    }
    
    public func getIcon() -> UIImage? {
        
        switch self {
        case .DEFECTREPORT: return UIImage(named: "h01_defectReport")
        case .WORKORDER: return UIImage(named: "h01_workOrder")
        case .FLIGHTSCHEDULE: return UIImage(named: "h01_flightSchedule")
        case .DEFECTREPORTARCHIVE: return UIImage(named: "h01_defectReportArchive")
        case .ASSIGNEDITEM: return UIImage(named: "h01_assignedItems")
        case .ACUNIT: return UIImage(named: "h01_ac")
        case .INVENTORY: return UIImage(named: "h01_inventory")
        case .DTSWORKORDER: return UIImage(named: "h01_workOrder")
        case .DTSARCHIVE: return UIImage(named: "h01_defectReportArchive")
        case .DTSCUSTOMER: return  UIImage(named: "h01_defectReport")
        case .EMPTY: return  UIImage(named: "h01_defectReport")
            
        case .LOPA: return UIImage(named: "h01_lopa")
        case .EPCLOPA: return UIImage(named: "h01_epc")
        case .MEETGREET: return UIImage(named: "h01_mag")
        }
    }
}





public class UserRoleResponse: Mappable {
    
    public var links: [String]?
    public var menus: [HamburgerMenu]?
    
    public required init() { }
    
    public required init(map: Map) { }
    
    public func mapping(map: Map){
        links <- map["links"]
        
    }
}

