//
//  RosterRequestType.swift
//  TTBaseModel
//
//  Created by Remzi YILDIRIM on 12.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation

public enum RosterRequestType : Int {
    case Start = 1
    case Stop = 2
    case Resume = 3
    case Pause = 4
    case Reject = 5
    case Get = 6
    case Create = 7
    case CreateAndStart = 8
    case Leave = 999 // used for localization
    
    public func localized() -> String {
        switch self {
        case .Start:
            return ActionStatus.start
        case .Stop:
            return ActionStatus.stop
        case .Resume:
            return ActionStatus.resume
        case .Pause:
            return ActionStatus.pause
        case .Reject:
            return ActionStatus.reject
        case .Leave:
            return ActionStatus.leave
        default:
            return ""
        }
    }
}

extension RosterRequestType {
    struct ActionStatus {
        static let start = "Start"
        static let stop = "Done"
        static let resume = "Resume"
        static let pause = "Pause"
        static let reject = "Reject"
        static let leave = "Leave Task"
    }
}
