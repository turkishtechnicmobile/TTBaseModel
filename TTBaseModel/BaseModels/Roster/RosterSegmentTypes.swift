//
//  RosterSegmentTypes.swift
//  NMBaseModel
//
//  Created by Remzi YILDIRIM on 12.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation

public enum RosterSegmentTypes: Int {
    case all, PlannedItems, SelfAssigned, DailyCheck, TransitCheck
    
    public func value() -> Int {
        switch self {
        case .all: return 5
        case .PlannedItems: return 3
        case .SelfAssigned: return 4
        case .DailyCheck: return 1
        case .TransitCheck: return 2
        }
    }
   
    public func name() -> String {
        switch self {
        case .all: return "All"
        case .PlannedItems: return "PlannedItems"
        case .SelfAssigned: return "SelfAssigned"
        case .DailyCheck: return "DailyCheck"
        case .TransitCheck: return "TransitCheck"
        }
    }
    
    // TODO: Remzi
    public func localized() -> String {
        switch self {
//        case .all: return LocalizedConstants.AssignedItems.all
//        case .PlannedItems: return LocalizedConstants.AssignedItems.plannedItem
//        case .SelfAssigned: return LocalizedConstants.AssignedItems.selfAssigned
//        case .DailyCheck: return LocalizedConstants.AssignedItems.dailyCheck
//        case .TransitCheck: return LocalizedConstants.AssignedItems.transitCheck
        case .all: return AssignedItems.all
        case .PlannedItems: return AssignedItems.plannedItem
        case .SelfAssigned: return AssignedItems.selfAssigned
        case .DailyCheck: return AssignedItems.dailyCheck
        case .TransitCheck: return AssignedItems.transitCheck
        }
    }
    
    public func refreshControlString() -> String {
        switch self {
        case .all: return "Loading all items."
        case .PlannedItems: return "Loading planned items."
        case .SelfAssigned: return "Loading self assigned items."
        case .DailyCheck: return "Loading dailycheck items."
        case .TransitCheck: return "Loading transitcheck items."
        }
    }
    
    public func index() -> Int {
        switch self {
        case .all: return 0
        case .PlannedItems: return 1
        case .DailyCheck: return 2
        case .TransitCheck: return 3
        case .SelfAssigned: return 4
        }
    }
   
}

extension RosterSegmentTypes {
    struct AssignedItems {
        static let all = "ALL"
        static let plannedItem = "PLANNED ITEMS"
        static let selfAssigned = "SELF ASSIGNED"
        static let dailyCheck =  "DAILY CHECK"
        static let transitCheck = "TRANSIT CHECK"
    }
}
