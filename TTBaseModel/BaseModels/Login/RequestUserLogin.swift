//
//  RequestUserLogin.swift
//  NMBaseModel
//
//  Created by MnzfM on 16.09.2019.
//  Copyright © 2019 MnzfM. All rights reserved.
//

import Foundation
import ObjectMapper

open class RequestUserLogin : RequestModelBase {
    
    // MARK: Properties
    public var userName:String?
    public var password:String?
    
    public required init() {
        super.init()
    }
    
    public required init(map: Map) throws {
        try super.init(map: map)
    }
    
    public required init(userName:String, password:String) {
        super.init()
        self.userName = userName
        self.password = password
    }
    
    // MARK: Mapping
    
    open override func dictionaryRepresentation() -> [String: Any] {
        var dictionary = super.dictionaryRepresentation()
        if let value = userName { dictionary[SerializationKeys.userName] = value }
        if let value = password { dictionary[SerializationKeys.password] = value }
        return dictionary
    }
}

extension RequestUserLogin {
    
    private struct SerializationKeys {
//        static let grantType = "grant_type"
        static let userName = "username"
        static let password = "password"
        static let isBeta = "isBeta"
        static let os = "os"
        static let applicationScheme = "application_scheme"
    }
}
