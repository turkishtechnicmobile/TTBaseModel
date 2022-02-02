//
//  DTSArchiveRequestModel.swift
//  TTBaseModel
//
//  Created by Burhan on 13.10.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class DTSArchiveRequestModel: RequestModelBase {

    public var wo: String?
    public var ac: String?
    public var location: String?
    public var crsDate: String?
    
//    {
//      "wo": "2398257",
//      "ac": "string",
//      "location": "string",
//      "crsDate": "2020-10-13T17:54:57.228Z"
//    }
    
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
        if let value = ac { dictionary[SerializationKeys.ac] = value }
        if let value = location { dictionary[SerializationKeys.location] = value }
        if let value = crsDate { dictionary[SerializationKeys.crsDate] = value }
        
        return dictionary
    }
}

extension DTSArchiveRequestModel {
    private struct SerializationKeys {
        static let wo = "wo"
        static let ac = "ac"
        static let location = "location"
        static let crsDate = "crsDate"
    }
}
