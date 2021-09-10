//
//  UserModel.swift
//  NMBaseModel
//
//  Created by Remzi YILDIRIM on 12.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class UserModel: Mappable, Model {
    public var token: String?
    public var department: String?
    public var email: String?
    public var fullName: String?
    public var userId: String?
    public var userName: String?
//    public var applicationId: Int?
    public var title: String?
    public var direktorateId: String?
    public var sessionExpireSeconds: Int = 0
    public var webApiToken: String?
    public var profilePhoto: ProfilePhoto?
    //    public var userRoles: String?
    
    public required init?(map: Map) { }
    
    public required init?() { }
    
    public func mapping(map: Map){
        self.userId <- map[SerializationKeys.userId]
//        var appIdTemp = ""
//        appIdTemp <- map [SerializationKeys.applicationId]
//        self.applicationId = Int((appIdTemp as NSString).intValue)
        self.token <- map [SerializationKeys.token]
        self.department <- map [SerializationKeys.department]
        self.email <- map [SerializationKeys.email]
        self.fullName <- map [SerializationKeys.fullName]
        self.userName <- map [SerializationKeys.userName]
        self.title <- map [SerializationKeys.title]
        self.direktorateId <- map [SerializationKeys.direktorateId]
        self.sessionExpireSeconds <- map[SerializationKeys.sessionExpireSeconds]
        self.webApiToken <- map[SerializationKeys.webApiToken]
        //        self.userRoles <- map ["UserRoles"]
    }
}

extension UserModel {
    private struct SerializationKeys {
        static let token = "token"
        static let department = "department"
        static let email = "email"
        static let fullName = "fullName"
        static let userId = "userId"
        static let userName = "userName"
        static let title = "title"
//        static let applicationId = "applicationId"
        static let direktorateId = "direktorateId"
        static let sessionExpireSeconds = "waSessionExpireSeceonds"
        static let webApiToken = "webApiToken"
        //        static let userRoles = "userRoles"
    }
    
    enum CodingKeys: String, CodingKey {
        case token = "token"
        case department = "department"
        case email = "email"
        case fullName = "fullName"
        case userId = "userId"
        case userName = "userName"
//        case applicationId = "applicationId"
        case title = "title"
        case direktorateId = "direktorateId"
        case sessionExpireSeconds = "waSessionExpireSeceonds"
        case webApiToken = "webApiToken"
        //        case userRoles = "UserRoles"
    }
}
