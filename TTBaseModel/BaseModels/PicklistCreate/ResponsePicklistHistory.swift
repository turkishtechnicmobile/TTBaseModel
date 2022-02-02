//
//  ResponsePicklistHistory.swift
//  TTBaseModel
//
//  Created by Nazif MASMANACI on 7.07.2021.
//  Copyright © 2021 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class ResponsePicklistHistory : Mappable {

    public var picklist:[PicklistHistoryModel]?
    
    public required init() { }
    
    public required init(map: Map) { }
    
    public func mapping(map: Map) {
        self.picklist <- map["picklist"]
    }
}

public class PicklistHistoryModel : Mappable, ItemViewModel {

    public var picklistNo:Int!
    public var createdDate:String?
    public var inventoryLocation:String?
    public var pnList:[PicklistHistoryPnModel]!
    public var status:PicklistStatus?
    public var isFreeze:Bool?
    
    public required init() { }
    public required init(map: Map) { }
    
    public func mapping(map: Map) {
        
        self.picklistNo         <- map["picklistNo"]
        self.status             <- map["status"]
        self.createdDate        <- map["createdDate"]
        self.inventoryLocation  <- map["inventoryLocation"]
        self.pnList             <- map["pnList"]
        self.isFreeze           <- map["isFreeze"]
        
        if isFreeze == true && self.status == .OPEN {
            
            self.status = .FROZEN
        }
    }
}

public class PicklistHistoryPnModel : Mappable, ItemViewModel {
    
    public var pn:String!
    public var picklist:Int!
    public var status:PicklistPnStatus?
    public var picklistLine:Int!
    public var pnDescription:String?
    public var qtyPicked:Double?
    public var stockUOM:String?
    public var pnCategory:String?
    public var qtyRequired:Double?
    
    public required init() { }
    public required init(map: Map) { }
    
    public func mapping(map: Map) {
        
        self.pn            <- map["pn"]
        self.picklist      <- map["picklist"]
        self.status        <- map["status"]
        self.picklistLine  <- map["picklistLine"]
        self.pnDescription <- map["pnDescription"]
        self.qtyPicked     <- map["qtyPicked"]
        self.stockUOM      <- map["stockUOM"]
        self.pnCategory    <- map["pnCategory"]
        self.qtyRequired   <- map["qtyRequired"]
        
        if (self.status == .CLOSED) && (qtyRequired != qtyPicked) {
            
            self.status = .MISSING
        }
    }
}

