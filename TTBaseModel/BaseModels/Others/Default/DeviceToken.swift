//
//  DeviceToken.swift
//  TTBaseModel
//
//  Created by Remzi YILDIRIM on 13.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation

public class DeviceToken: Model {
    public var applicationID: Int?
    public var applicationScheme: String?
    public var deviceToken: String?
    public var isBeta: Bool?
    public var os: String?
    public var userID: String?
    public var userName: String?
    public var version: String?
    
    public init() {}
}

extension DeviceToken {
    enum CodingKeys: String, CodingKey {
        case applicationID = "ApplicationId"
        case applicationScheme = "ApplicationScheme"
        case deviceToken = "DeviceToken"
        case isBeta = "IsBeta"
        case os = "Os"
        case userID = "UserId"
        case userName = "UserName"
        case version = "Version"
    }
}
