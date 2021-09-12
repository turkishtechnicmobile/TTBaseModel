//
//  ResponseStatusModel.swift
//  TTBaseModel
//
//  Created by MnzfM on 7.10.2019.
//  Copyright © 2019 MnzfM. All rights reserved.
//

import Foundation
import ObjectMapper

open class ResponseStatusBase: Mappable {
    
    public var isSucceed  : Bool = false
    public var message    : String?
    public var statusCode : Int?
    public var internalMessage    : String?
    
    
    required public init(map: Map) {
        
    }
    
    required public init?() {
        
        
    }
    
    public func mapping(map: Map){
//        isSucceed <- map[SerializationKeys.isSucceed]
//        statusCode <- map[SerializationKeys.code]
//        message <- map[SerializationKeys.message]
//        internalMessage <- map[SerializationKeys.internalMessage]
        
        isSucceed <- map[WrongSerializationKeys.isSucceed]
        if !isSucceed {
            isSucceed <- map[SerializationKeys.isSucceed]
        }
        
        statusCode <- map[WrongSerializationKeys.code]
        if statusCode == nil {
            statusCode <- map[SerializationKeys.code]
        }
        
        message <- map[WrongSerializationKeys.message]
        if message == nil {
            message <- map[SerializationKeys.message]
        }
        
        internalMessage <- map[WrongSerializationKeys.internalMessage]
        if internalMessage == nil {
            internalMessage <- map[SerializationKeys.internalMessage]
        }
    }

}

extension ResponseStatusBase {
    
    private struct WrongSerializationKeys {
        static let code = "Code"
        static let isSucceed = "IsSucceed"
        static let message = "Message"
        static let internalMessage = "InternalMessage"
    }
    
    private struct SerializationKeys {
        static let code = "code"
        static let isSucceed = "isSucceed"
        static let message = "message"
        static let internalMessage = "internalMessage"
    }
}
