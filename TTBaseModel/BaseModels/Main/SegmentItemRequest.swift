//
//  SegmentItemRequest.swift
//  NMBaseModel
//
//  Created by Remzi YILDIRIM on 12.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class SegmentItemRequest: SegmentsRequest {
    // MARK: Properties
    public var itemID:String?
    public var rejectReason:String?
    public var note:String?
    public var estimatedTime:Int?
    
    public required init() {
        super.init()
    }
    
    public required init(map: Map) throws {
        try super.init(map: map)
    }
    
   
    public required init(registerID:String,requestType:Int,opType:Int, itemID:String, note:String, estimateTime:Int) {
        super.init(registerID: registerID, requestType: requestType, opType: opType)
        self.itemID = itemID
        self.note = note
        self.estimatedTime = estimateTime
    }
    
    public required init(registerID:String,requestType:Int,opType:Int, itemID:String, rejectReason:String?) {
        super.init(registerID: registerID, requestType: requestType, opType: opType)
        self.itemID = itemID
        self.rejectReason = rejectReason
    }
    
    public required init(registerID: String, requestType: Int, opType: Int) {
        fatalError("init(registerID:requestType:opType:isBeta:) has not been implemented")
    }
    
    // MARK: Mapping
    public override func dictionaryRepresentation() -> [String: Any] {
        var dictionary = super.dictionaryRepresentation()
        if let value = itemID { dictionary[SerializationKeys.itemID] = value }
        if let value = rejectReason { dictionary[SerializationKeys.rejectReason] = value }
        if let value = note { dictionary[SerializationKeys.note] = value }
        if let value = estimatedTime { dictionary[SerializationKeys.estimatedTime] = value }
        return dictionary
    }
}

extension SegmentItemRequest {
    private struct SerializationKeys {
        static let itemID = "ItemID"
        static let rejectReason = "RejectReason"
        static let note = "Note"
        static let estimatedTime = "EstimatedTimeInMins"
    }
}
