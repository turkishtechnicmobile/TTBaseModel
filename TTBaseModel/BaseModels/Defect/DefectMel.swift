//
//  DefectMel.swift
//  NMBaseModel
//
//  Created by Remzi YILDIRIM on 13.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation

public class DefectMel: Model {
    public var acType: String?
    public var acSeries: String?
    public var description: String?
    public var mel: String?
    public var melCalendarDaysFlag: String?
    public var melCycles: Int?
    public var melCyclesRepeat: Int?
    public var melDays: Int?
    public var melDaysRepeat: Int?
    public var melHours: Int?
    public var melHoursRepeat: Int?
    public var melNumber: String?
    public var melSub: String?
    
    public init() { }
}

extension DefectMel {
    enum CodingKeys: String, CodingKey {
        case acType = "AC_TYPE"
        case acSeries = "AC_SERIES"
        case description = "DESCRIPTION"
        case mel = "MEL"
        case melCalendarDaysFlag = "MEL_CALENDAR_DAYS_FLAG"
        case melCycles = "MEL_CYCLES"
        case melCyclesRepeat = "MEL_CYCLES_REPEAT"
        case melDays = "MEL_DAYS"
        case melDaysRepeat = "MEL_DAYS_REPEAT"
        case melHours = "MEL_HOURS"
        case melHoursRepeat = "MEL_HOURS_REPEAT"
        case melNumber = "MEL_NUMBER"
        case melSub = "MEL_SUB"
    }
}
