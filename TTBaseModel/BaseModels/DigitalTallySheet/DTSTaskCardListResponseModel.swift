//
//  DTSTaskCardListResponseModel.swift
//  TTBaseModel
//
//  Created by Burhan on 3.09.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class DTSTaskCardListResponseModel : Mappable {
    // MARK: Properties
    public var taskCards:[DTSTaskCardListItemModel]?
    
    public required init() {
    }
    
    public required init(map: Map) {
    }
    
    // MARK: Mapping
    public func mapping(map: Map){
        // super.mapping(map: map)
        self.taskCards <- map[SerializationKeys.taskCards]
    }
}

extension DTSTaskCardListResponseModel {
    private struct SerializationKeys {
        static let taskCards = "taskCards"
    }
}

public protocol DTSTaskCardListItemModelProtocol {
    var wo: Int? { get }
    var taskCard: String? { get }
    var taskCardDescription: String? { get }
    var pn: String? { get }
    var sn: String? { get }
    var status: String? { get }
    var createdBy: String? { get }
    var modifiedBy: String? { get }
    var stampStatus: StampStatus { get }
    var isNonRoutine: Bool { get }
}

public class DTSTaskCardListItemModel : DTSTaskCardListItemModelProtocol, Mappable {
    // MARK: Properties
    public var wo: Int?
    public var taskCard: String?
    public var taskCardDescription: String?
    public var pn: String?
    public var sn: String?
    public var status: String?
    public var createdBy: String?
    public var modifiedBy: String?
    public var stampStatus: StampStatus = .NONE
    public var isNonRoutine: Bool = false
    
    public required init() {
        
    }

    public required init(map: Map) {
        
    }
    
    // MARK: Mapping
    public func mapping(map: Map){
        // super.mapping(map: map)
        self.wo <- map[SerializationKeys.wo]
        self.taskCard <- map[SerializationKeys.taskCard]
        self.taskCardDescription <- map[SerializationKeys.taskCardDescription]
        self.pn <- map[SerializationKeys.pn]
        self.sn <- map[SerializationKeys.sn]
        self.status <- map[SerializationKeys.status]
        self.createdBy <- map[SerializationKeys.createdBy]
        self.modifiedBy <- map[SerializationKeys.modifiedBy]
        var stampStatus:Int = 0
        stampStatus <- map[SerializationKeys.stampStatus]
        self.stampStatus = StampStatus.init(rawValue: stampStatus) ?? .NONE
        self.isNonRoutine <- map[SerializationKeys.isNonRoutine]
    }
}

extension DTSTaskCardListItemModel {
    private struct SerializationKeys {
        static let wo = "wo"
        static let taskCard = "taskCard"
        static let taskCardDescription = "taskCardDescription"
        static let pn = "pn"
        static let sn = "sn"
        static let status = "status"
        static let createdBy = "createdBy"
        static let modifiedBy = "modifiedBy"
        static let stampStatus = "stampStatus"
        static let isNonRoutine = "isNonRoutine"
    }
}
