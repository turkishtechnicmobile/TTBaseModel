//
//  DTSTaskCardListRequestModel.swift
//  NMBaseModel
//
//  Created by Burhan on 15.09.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public protocol DTSTaskCardListFilterProtocol {
    var wo:Int {get set}
    var isNonRoutine:Bool {get set}
  
    var searchText: String {get}
    var status: String {get}
//    var pn: String {get}
//    var cardNo: String {get}
//    var registerId: String {get}
    var employeeId: String {get}
    var stampStatus: StampStatus? {get}
    
    func toBase64String() -> String 
}

public class DTSTaskCardListRequestModel: RequestModelBase {
    public var wo: Int?
    
    public var taskCard: String? {
        return self.filterModel?.searchText
    }
    
    public var status: String? {
        return self.filterModel?.status
    }
    
    public var employeeId: String? {
        return self.filterModel?.employeeId
    }
    
//    public var pn: String? {
//        return self.filterModel?.pn
//    }
    
//    public var sn: String? {
//        return self.filterModel?.sn
//    }
//
    public var isNonRoutine: Bool {
        return self.filterModel?.isNonRoutine ?? false
    }
    
    public var stampStatus: StampStatus? {
        self.filterModel?.stampStatus
    }
    public var filterModel: DTSTaskCardListFilterProtocol?
    
    
    public required init() {
        super.init()
    }
    
    public required init(map: Map) throws {
        try super.init(map: map)
    }
    

    
// MARK: Mapping
    open override func dictionaryRepresentation() -> [String: Any] {
        var dictionary = super.dictionaryRepresentation()
        
        if let value = wo { dictionary[SerializationKeys.wo] = value }
        if let value = taskCard { dictionary[SerializationKeys.taskCard] = value }
//        if let value = pn { dictionary[SerializationKeys.pn] = value }
//        if let value = sn { dictionary[SerializationKeys.sn] = value }
        if let value = status { dictionary[SerializationKeys.status] = value }
        if let value = employeeId { dictionary[SerializationKeys.employeeId] = value }
        
        if let value = stampStatus?.rawValue { dictionary[SerializationKeys.stampStatus] = value }
        
//        dictionary[SerializationKeys.isNonRoutine] = isNonRoutine
            //? "Y" : "N"  // service wait null or value
        return dictionary
    }
}

extension DTSTaskCardListRequestModel {
    private struct SerializationKeys {
        static let wo = "wo"
        static let taskCard = "taskCard"
        static let taskCardDescription = "taskCardDescription"
        static let pn = "pn"
        static let sn = "sn"
        static let status = "status"
        static let employeeId = "employeeId"
        static let isNonRoutine = "isNonRoutine"
        static let stampStatus = "stampStatus"
    }
}


