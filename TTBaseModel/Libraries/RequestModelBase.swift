//
//  RequestModelBase.swift
//  NMBaseModel
//
//  Created by MnzfM on 16.09.2019.
//  Copyright © 2019 MnzfM. All rights reserved.
//

import Foundation
import ObjectMapper

open class RequestModelBase :NSObject, ImmutableMappable {
    // MARK: Properties
    
    // MARK: Mapping
    required public override init(){
    }
    
    public required init(map: Map) throws {
        
    }
    
    open func dictionaryRepresentation() -> [String:Any] {
        let dictionary: [String: Any] = [:]
        return dictionary
    }
}

