//
//  ResponsePicklistLocations.swift
//  TTBaseModel
//
//  Created by Nazif MASMANACI on 1.07.2021.
//  Copyright © 2021 Turkish Technic. All rights reserved.
//
import Foundation
import ObjectMapper

public class ResponsePicklistLocations : Mappable {

    public var locations:[PicklistLocationModel]?
    
    public required init() { }
    
    public required init(map: Map) { }
    
    public func mapping(map: Map) {
        self.locations <- map["locations"]
    }
}

public class PicklistLocationModel : Mappable {

    public var id:String!
    public var location:String!
    
    public required init() { }
    public required init(map: Map) { }
    
    public func mapping(map: Map) {
        
        var mID :Int?
        
        mID <- map["id"]
        
        self.id  = "\(mID ?? 0)"
        
        
        var mlocation :String?
        
        mlocation <- map["location"]
        
        self.location = mlocation ?? ""
    }
}


public class ResponsePicklistSites : Mappable {

    public var sites:[String]?
    
    public required init() { }
    
    public required init(map: Map) { }
    
    public func mapping(map: Map) {
        self.sites <- map["sites"]
    }
}
