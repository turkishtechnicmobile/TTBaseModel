//
//  ResponseUserLogin.swift
//  TTBaseModel
//
//  Created by MnzfM on 16.09.2019.
//  Copyright © 2019 MnzfM. All rights reserved.
//

import Foundation
import ObjectMapper

//open class ResponseUserLogin : ResponseModelBase {
//
//    // MARK: Properties
//    public var accessToken: String?
//    public var userRoles: String?
//    public var department: String?
//    public var email: String?
//    public var fullName: String?
//    public var userId: String?
//    public var userName: String?
//    public var applicationId: Int?
//    public var direktorateId: String?
//    public var expiresIn: Int?
//    public var profilePhoto: ProfilePhoto?
//
//    public required init() {
//        super.init()
//    }
//
//    public required init(map: Map) {
//        super.init(map: map)
//    }
//
//    // MARK: Mapping
//
//    open override func mapping(map: Map){
//        var userIdTemp : String = ""
//        var appIdTemp = ""
//        userIdTemp <- map[SerializationKeys.userID]
//        appIdTemp <- map [SerializationKeys.applicationID]
//        self.userId <- map[SerializationKeys.userID]
//        self.applicationId = Int((appIdTemp as NSString).intValue)
//        self.accessToken <- map [SerializationKeys.accessToken]
//        self.userRoles <- map [SerializationKeys.userRoles]
//        self.department <- map [SerializationKeys.department]
//        self.email <- map [SerializationKeys.email]
//        self.fullName <- map [SerializationKeys.fullName]
//        self.userName <- map [SerializationKeys.userName]
//        self.direktorateId <- map [SerializationKeys.direktorateId]
//        self.expiresIn <- map [SerializationKeys.expiresIn]
//    }
//}
//
//extension ResponseUserLogin {
//    private struct SerializationKeys {
//        static let accessToken = "access_token"
//        static let userID = "UserId"
//        static let userName = "UserName"
//        static let userRoles = "UserRoles"
//        static let fullName = "FullName"
//        static let applicationID = "ApplicationId"
//        static let department = "Department"
//        static let email = "Email"
//        static let direktorateId = "DirektorateId"
//        static let expiresIn = "expires_in"
//    }
//}


public class UserLoginResponse: Mappable {
    // MARK: Properties
    public var user: UserModel?
    
    public required init() {
    }
    
    public required init(map: Map) {
    }
    
    // MARK: Mapping
    public func mapping(map: Map){
        user <- map[SerializationKeys.loginUser]
    }
}

extension UserLoginResponse {
    private struct SerializationKeys {
        static let loginUser = "loginUser"
    }
}
