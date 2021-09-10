//
//  ResponseModelBase.swift
//  NMBaseModel
//
//  Created by MnzfM on 16.09.2019.
//  Copyright © 2019 MnzfM. All rights reserved.
//

import Foundation
import ObjectMapper

open class ResponseModelBase :NSObject, ImmutableMappable {
    
    // MARK: Properties
    public var isSucceed  : Bool = false
    public var message    : String?
    public var statusCode : Int?
    public var debugDesc: String?
  
    // MARK: Mapping
    required public override init(){
        
    }
    
    public required init(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        isSucceed <- map[SerializationKeys.isSucceed]
        
        if isSucceed == false {
            
            isSucceed <- map[SerializationKeys.isSucceed2]
        }
        
        message <- map[SerializationKeys.message]
        
        if message == nil {
            
            isSucceed <- map[SerializationKeys.result]
            
            message <- map[SerializationKeys.messageUPPER]
        }
       
    }
}

extension ResponseModelBase {
    
    private struct SerializationKeys {
        static let isSucceed = "IsSucceed"
        static let isSucceed2 = "isSucceed"
        static let statusCode = "statusCode"
        static let message = "message"
        static let messageUPPER = "MESSAGE"
        static let result = "RESULT"
    }
}



