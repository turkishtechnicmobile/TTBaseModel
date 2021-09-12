//
//  Constants.swift
//  TTBaseModel
//
//  Created by Remzi YILDIRIM on 17.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation

class Constants {
    static var lang = "tr-TR"
    static let applicationScheme = "ttasistan"
    static let applicationDisplayName = Bundle.main.infoDictionary?[kCFBundleNameKey as String] as! String
    static let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as! String
    static let build = Bundle.main.infoDictionary?[kCFBundleVersionKey as String] as! String
    static let os = "IOS"
    
    static var isBeta : Bool {
        get {
            #if DEVELOPMENT
            return true
            #else
            return false
            #endif
        }
    }
    static var isRealDevice: Bool {
        get {
            #if targetEnvironment(simulator)
            return false
            #else
            return true
            #endif
        }
    }
    
    static let empty = ""
    static let dash = "-"
    static let yes = "YES"
    static let no = "NO"
    static let confirm = "CONFIRM"
    static let spare = "SPARE"
    static let employeeIDPrefix = "E"
    static let underNavigationBarHeight: CGFloat = 64
    static let ongoing = "ONGOING"
    static let closed = "CLOSED"
    static let defectTroubleShootingStatuses: [String] = [Constants.ongoing, Constants.closed]
    static let defectTroubleShootingTypes: [String] = ["AMM", "TSM", "FIM", "SRM"]
    static let mostUsedLocations: [String] = ["IST", "ISL", "SAW", "ESB"]
    static let fleets = ["A320", "A330", "A350", "B737", "B747", "B777", "B787"]
    static let flightScheduleOrigin = "IST"
    static let grandType = "password"
    static let nrcPrefix = "NRC"
    static let contactEmail = "TT-BTB-VENDETTA@THY.COM - LMPLANNINGBUSINESSDEVELOPMENT@THY.COM"
    static let userManualUrl = "https://mobileupdate.thyteknik.com.tr/usermanual/ttasistan.pdf"
    static let mobilineProjectId = 18
    
    struct Countly {
        static let key = "29023df0a301c15f1999be4939b8f125d3ed7042"
        static let host = "http://10.9.102.205/"
    }

    struct Chars {
        static let n = "N"
        static let y = "Y"
    }
    
    struct Defect {
        static let minDefectItem: Int = 1
        static let maxDefectItem: Int = 10
        static let minManRequired: Double = 1
        static let minManHour: Double = 1
        static let open = "OPEN"
        static let hold = "HOLD"
        static let closed = "CLOSED"
    }
    
    struct WorkOrder {
        static let line = "LINE"
        static let base = "OPEN"
        static let statusClosed = "CLOSED"
        static let statusCancel = "CANCEL"
        static let statusDefer = "DEFER"
        static let tcNrcStatus = ["OPEN","CLOSED","CANCEL","DEFER","DELAYED","HOLD","ON CONDITION"]
        static let tcNrcStatusForRoster = ["OPEN",Constants.WorkOrder.statusClosed, Constants.WorkOrder.statusCancel, Constants.WorkOrder.statusDefer]
    }
}
