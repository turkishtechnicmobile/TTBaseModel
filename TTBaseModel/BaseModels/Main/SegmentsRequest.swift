//
//  SegmentsRequest.swift
//  TTBaseModel
//
//  Created by Remzi YILDIRIM on 12.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

open class SegmentsRequest: RequestModelBase {
    // MARK: Properties
    public var registerID:String?
    public var requestType:Int?
    public var opType:Int?
    
    public required init() {
        super.init()
    }
    
    public required init(map: Map) throws {
        try super.init(map: map)
    }
    
    public required init(registerID:String, requestType:Int, opType:Int) {
        super.init()
        
        self.registerID = registerID
        self.requestType = requestType
        self.opType = opType
    }
    
    // MARK: Mapping
    open override func dictionaryRepresentation() -> [String: Any] {
        var dictionary = super.dictionaryRepresentation()
        if let value = registerID { dictionary[SerializationKeys.registerID] = value }
        if let value = requestType { dictionary[SerializationKeys.requestType] = value }
        if let value = opType { dictionary[SerializationKeys.opType] = value }
        return dictionary
    }
}

extension SegmentsRequest {
    private struct SerializationKeys {
        static let registerID = "RegisterId"
        static let requestType = "RequestType"
        static let opType = "opType"
    }
}
