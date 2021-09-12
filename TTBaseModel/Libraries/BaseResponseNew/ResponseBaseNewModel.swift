//
//  ResponseBaseNewModel.swift
//  TTBaseModel
//
//  Created by MnzfM on 7.10.2019.
//  Copyright © 2019 MnzfM. All rights reserved.
//

import Foundation
import ObjectMapper

open class ResponseBaseNewModel<T:Mappable>:NSObject, ImmutableMappable {
    
    // MARK: Properties
    enum SerializationKeys:String {
         case status = "status"
         case data = "data"
    }

    public var status: ResponseStatusBase!
    public var debugDesc: String?
    public var data: T!
    
    // MARK: Mapping
    required public override init(){
        super.init()
    }
    
    public required init(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        status <- map[SerializationKeys.status.rawValue]
        data <- map[SerializationKeys.data.rawValue]
    }
}








