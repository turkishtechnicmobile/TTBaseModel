//
//  QueryConstant.swift
//  NMBaseModel
//
//  Created by MnzfM on 16.09.2019.
//  Copyright © 2019 MnzfM. All rights reserved.
//

import Foundation

open class QueryConstant {
    static var lang = "tr-TR"
    
    public static let build = Bundle.main.infoDictionary?["CFBundleVersion"] as? String
    public static let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String
    public static let bundleIdentifier = Bundle.main.bundleIdentifier

    public static let os = "IOS"
    public static var isBetaText: String {
        return String(isBeta)
    }
    
    public static var isBeta: Bool {
        return !(bundleIdentifier ?? "").hasPrefix("com")
    }
    
    public class var mainUrl: String {
        return "https://mobileupdate.thyteknik.com.tr"
    }
    
    public class func apiBaseUrl(isCore: Bool, withPath: String) -> String {
        return apiBaseUrl(for: currentProject(isCore: isCore)) + withPath
    }
    
    class func apiBaseUrl(for project: Project) -> String {
        if project.isCore {
            let testProd = isBeta ? "test" : ""
            return mainUrl + "/\(project.rawValue)\(testProd)"
        }
        
        let testProd = isBeta ? "test" : "prod"
        return mainUrl + "/\(testProd)/api"
    }
    
    public class func currentProject(isCore: Bool = true) -> Project {
        guard isCore else {
            return .default
        }
        
        return (bundleIdentifier ?? "").hasSuffix("CIDMobile") ? .cabin : .ttasistan
    }
    
    open class func getHeaders(isCore: Bool) -> [String: String] {
        var header = [String:String]()
        if isCore {
            header["Content-Type"] = "application/json"
            if let accessToken = UserDefaults.standard.value(forKey: "token")  {
                header["Authorization"] = "Bearer \(accessToken)"
                header["lang"] = QueryConstant.lang
            }
        } else {
            header["Content-Type"] = "application/x-www-form-urlencoded"//"application/json"//"application/x-www-form-urlencoded"
            if let accessToken = UserDefaults.standard.value(forKey: "accessToken")  {
                header["Authorization"] = "Bearer \(accessToken)"
                header["lang"] = QueryConstant.lang
            }
        }
        
        return header
    }
    
    // Old
    open class func getHeaders(isToken:Bool) -> [String:String] {
        
        var header = [String:String]()
        header["Content-Type"] = "application/x-www-form-urlencoded"//"application/json"//"application/x-www-form-urlencoded"
        
        if isToken, let accessToken = UserDefaults.standard.value(forKey: "accessToken")  {
            header["Authorization"] = "Bearer \(accessToken)"
            header["lang"] = QueryConstant.lang
        }
        
        return header
    }
}

extension QueryConstant {
    public enum Project: String {
        case `default`
        case ttasistan = "coreassistant"
        case cabin = "coremcabin"
        
        public var isCore: Bool {
            return self != .default
        }
        
        public var applicationScheme: String {
            switch self {
            case .ttasistan:
                return "ttasistan"
            case .cabin:
                return "cabin"
            default:
                return ""
            }
        }
    }
}
