//
//  ProgressStatus.swift
//  NMBaseModel
//
//  Created by Remzi YILDIRIM on 13.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation

public enum ProgressStatus : Int {
    case OPEN = 1
    case IN_PROGRESS = 2
    case PAUSED = 3
    case CLOSED = 4
    case CANCEL = 5
    
    // TODO: Remzo
    public func localized() -> String {
        switch self {
        case .OPEN:
//            return LocalizedConstants.AssignedItems.Status.open
            return Status.open
        case .IN_PROGRESS:
//            return LocalizedConstants.AssignedItems.Status.inProgress
            return Status.inProgress
        case .PAUSED:
//            return LocalizedConstants.AssignedItems.Status.paused
            return Status.paused
        case .CLOSED:
//            return LocalizedConstants.AssignedItems.Status.closed
            return Status.closed
        case .CANCEL:
//            return LocalizedConstants.AssignedItems.Status.cancel
            return Status.cancel
        }
    }
    
    public func showDate() -> Bool {
        return self == .OPEN
    }
    
    public func sortValue() -> Int {
        switch self {
        case .OPEN: return 2
        case .IN_PROGRESS: return 1
        case .PAUSED: return 0
        case .CLOSED, .CANCEL: return rawValue
        }
    }
}

extension ProgressStatus {
    struct Status {
        static let open = "OPEN"
        static let inProgress = "IN PROGRESS"
        static let paused = "PAUSED"
        static let closed = "CLOSED"
        static let cancel = "CANCEL"
    }
}
