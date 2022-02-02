//
//  DTSCustomerWoResponseModel.swift
//  TTBaseModel
//
//  Created by MnzfM on 13.01.2021.
//  Copyright © 2021 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class DTSCustomerWoResponseModel: Mappable {
    // MARK: Properties
    public var workOrders: [WoItemNV]?
    
    public required init() {
    }
    
    public required init(map: Map) {
    }
    
    // MARK: Mapping
    public func mapping(map: Map) {
        self.workOrders <- map[SerializationKeys.workOrders]
    }

}

extension DTSCustomerWoResponseModel {
    private struct SerializationKeys {
        static let workOrders = "workOrders"
    }
}

/*
public class CustomerWoItem: Mappable {
    
    public var ac: String!
    public var wo: Int!
    public var location: String!
    public var tcCount: Int!
    public var nrtcCount: Int!
    public var woDescription: String!
    
    public required init?(map: Map) { }
    
    public required init?() { }
    
    public func mapping(map: Map){

        ac <- map[SerializationKeys.ac]
        wo <- map[SerializationKeys.wo]
        woDescription <- map[SerializationKeys.woDescription]
        location <- map[SerializationKeys.location]
        tcCount <- map[SerializationKeys.tcCount]
        nrtcCount <- map[SerializationKeys.nrtcCount]
    }
    
}

extension CustomerWoItem {
    private struct SerializationKeys {
        static let ac = "ac"
        static let wo = "wo"
        static let location = "location"
        static let tcCount = "tcCount"
        static let nrtcCount = "nrtcCount"
        static let woDescription = "woDescription"
    }
}
*/
