//
//  ResponseCheckVersion.swift
//  TTBaseModel
//
//  Created by MnzfM on 16.09.2019.
//  Copyright © 2019 MnzfM. All rights reserved.
//

import Foundation
import ObjectMapper

open class ResponseCheckVersion : ResponseModelBase {
    
    public var isValid : Bool! = false
    public var downloadLink : String!
    public var isNewVersionAvailable : Bool = false
    
    public required init() {
        super.init()
    }
    
    public required init(map: Map) {
        super.init(map: map)
    }
    
    override open func mapping(map: Map) {
        super.mapping(map: map)
        
        isValid <- map[SerializationKeys.isValid]
        downloadLink <- map[SerializationKeys.downloadLink]
        isNewVersionAvailable <- map [SerializationKeys.isNewVersionAvailable]
    }
}

extension ResponseCheckVersion {
    private struct SerializationKeys {
        static let isValid = "isValid"
        static let downloadLink = "downloadLink"
        static let isNewVersionAvailable = "isNewVersionAvailable"
    }
}
