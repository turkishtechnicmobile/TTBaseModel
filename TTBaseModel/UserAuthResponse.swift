//
//  UserAuthResponse.swift
//  TTBaseModel
//
//  Created by Remzi YILDIRIM on 12.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class UserAuthResponse: Mappable {
    
    // MARK: Properties
    public var authList: String?
    
    public required init() {
        
    }
    
    public required init(map: Map) {
        
    }
    
    // MARK: Mapping
    public func mapping(map: Map){
        authList <- map[SerializationKeys.authList]
    }
}

extension UserAuthResponse {
    private struct SerializationKeys {
        static let authList = "AuthList"
    }
}
