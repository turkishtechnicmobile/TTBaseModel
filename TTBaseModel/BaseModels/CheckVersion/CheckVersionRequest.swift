//
//  CheckVersionRequest.swift
//  NMBaseModel
//
//  Created by Remzi YILDIRIM on 11.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class CheckVersionRequest: RequestModelBase {
    
    public var os: String?
    public var applicationScheme: String?
    public var version: String?
    public var isBeta: Bool?
    
    convenience init(os: String?, applicationScheme: String?, version: String?, isBeta: Bool?) {
        self.init()
        self.os = os
        self.applicationScheme = applicationScheme
        self.version = version
        self.isBeta = isBeta
    }
    
    public required init() {
        super.init()
    }
    
    public required init(map: Map) throws {
        try super.init(map: map)
    }
    
    public convenience init(applicationScheme: String?, version: String?, isBeta: Bool?) {
        self.init(os: QueryConstant.os, applicationScheme: applicationScheme, version: version, isBeta: isBeta)
    }
    
    public override func dictionaryRepresentation() -> [String : Any] {
        var dictionary = super.dictionaryRepresentation()
        dictionary[SerializationKeys.os] = os
        dictionary[SerializationKeys.applicationScheme] = applicationScheme
        dictionary[SerializationKeys.version] = version
        dictionary[SerializationKeys.isBeta] = String(isBeta ?? true)
        return dictionary
    }
}

extension CheckVersionRequest {
    private struct SerializationKeys {
        static let os = "os"
        static let applicationScheme = "applicationScheme"
        static let version = "version"
        static let isBeta = "isBeta"
    }
}
