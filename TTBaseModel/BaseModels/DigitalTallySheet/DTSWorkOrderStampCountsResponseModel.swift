//
//  DTSWorkOrderStampCountsResponseModel.swift
//  TTBaseModel
//
//  Created by Burhan on 13.10.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class DTSWorkOrderStampCountsResponseModel : Mappable {
    // MARK: Properties
    public var wo: Int?
    public var tcStampCount: Int?
    public var tcUnstampCount: Int?
    public var nrtcStampCount: Int?
    public var nrtcUnstampCount: Int?

    public required init() {
    }
    
    public required init(map: Map) {
    }
    
    // MARK: Mapping
    public func mapping(map: Map){
        // super.mapping(map: map)
        self.wo <- map[SerializationKeys.wo]
        self.tcStampCount <- map[SerializationKeys.tcStampCount]
        self.tcUnstampCount <- map[SerializationKeys.tcUnstampCount]
        self.nrtcStampCount <- map[SerializationKeys.nrtcStampCount]
        self.nrtcUnstampCount <- map[SerializationKeys.nrtcUnstampCount]
    }
}

extension DTSWorkOrderStampCountsResponseModel {
    private struct SerializationKeys {
        static let wo = "wo"
        static let tcStampCount = "tcStampCount"
        static let tcUnstampCount = "tcUnstampCount"
        static let nrtcStampCount = "nrtcStampCount"
        static let nrtcUnstampCount = "nrtcUnstampCount"
    }
}
