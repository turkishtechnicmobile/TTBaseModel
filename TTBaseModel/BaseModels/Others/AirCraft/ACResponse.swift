//
//  ACResponse.swift
//  TTBaseModel
//
//  Created by Remzi YILDIRIM on 12.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

//public class ACResponse: ResponseModelBase {
//    // MARK: Properties
//    public var acMasters: [ACmodel]?
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
//    public override func mapping(map: Map) {
//        super.mapping(map: map)
//        self.acMasters <- map[SerializationKeys.acMasters]
//    }
//}
//
//extension ACResponse {
//    private struct SerializationKeys {
//        static let acMasters = "AcMasters"
//    }
//}
//
//// MARK: - Model
//public class ACmodel: Mappable {
//
//    public var ac : String!
//    public var acSN : String!
//    public var acType : String!
//    public var acSeries : String!
//    public var acDesc : String!
//    public var owner : String!
//    public var customer :String!
//    public var status : String!
//
//    public required init() {
//
//    }
//
//    public required init(map: Map) {
//    }
//
//    public func mapping(map: Map){
//        ac <- map[SerializationKeys.ac]
//        acSN <- map[SerializationKeys.acSN]
//        acType <- map[SerializationKeys.acType]
//        acSeries <- map[SerializationKeys.acSeries]
//        acDesc <- map[SerializationKeys.acDesc]
//        owner <- map[SerializationKeys.owner]
//        customer <- map[SerializationKeys.customer]
//        status <- map[SerializationKeys.status]
//    }
//}
//
//extension ACmodel {
//    private struct SerializationKeys {
//        static let ac = "AC"
//        static let acSN = "AC_SN"
//        static let acType = "AC_TYPE"
//        static let acSeries = "AC_SERIES"
//        static let acDesc = "AC_DESCRIPTION"
//        static let owner = "OWNER"
//        static let customer = "CUSTOMER"
//        static let status = "STATUS"
//    }
//}
//
//
////MARK: Cabin AC Response Model
//
//public class CabinACModelList: Mappable {
//
//    public var acMasters: [CabinACmodel]?
//
//    public required init() { }
//
//    public required init(map: Map) { }
//
//    // MARK: Mapping
//    public func mapping(map: Map) {
//        self.acMasters <- map["acList"]
//    }
//}
//
//public class CabinACmodel: Mappable {
//
//    public var ac : String!
//    public var acSN : String!
//    public var acType : String!
//    public var acSeries : String!
//    public var acDesc : String!
//    public var owner : String!
//    public var customer :String!
//    public var status : String!
//
//    public required init() {
//
//    }
//
//    public required init(map: Map) {
//    }
//
//    public func mapping(map: Map){
//        ac <- map[SerializationKeys.ac]
//        acSN <- map[SerializationKeys.acSN]
//        acType <- map[SerializationKeys.acType]
//        acSeries <- map[SerializationKeys.acSeries]
//        acDesc <- map[SerializationKeys.acDesc]
//        owner <- map[SerializationKeys.owner]
//        customer <- map[SerializationKeys.customer]
//        status <- map[SerializationKeys.status]
//    }
//}
//
//extension CabinACmodel {
//    private struct SerializationKeys {
//        static let ac = "ac"
//        static let acSN = "acSn"
//        static let acType = "acType"
//        static let acSeries = "acSeries"
//        static let acDesc = "acDescription"
//        static let owner = "owner"
//        static let customer = "customer"
//        static let status = "status"
//    }
//}


public class ACModelList: Mappable , Model{
    
    public var acList: [AircraftModel]?
    
    public required init() { }
    
    public required init(map: Map) { }
    
    public func mapping(map: Map) {
        self.acList <- map["acList"]
    }
    
    private enum CodingKeys: String, CodingKey {
        case acList = "acList"
    }
}

public class AircraftModel: Mappable , Model {
    
    public var ac : String!
    // public var acSN : String!
    public var acType : String!
    public var acSeries : String!
    public var acDesc : String!
    //   public var owner : String!
    public var customer :String!
    public var hasForeign: Bool! = false
    //  public var status : String!
    
    public required init() { }
    
    public required init(map: Map) { }
    
    public func mapping(map: Map){
        
        ac          <- map[SerializationKeys.ac]
        acType      <- map[SerializationKeys.acType]
        acSeries    <- map[SerializationKeys.acSeries]
        acDesc      <- map[SerializationKeys.acDesc]
        customer    <- map[SerializationKeys.customer]
        hasForeign  <- map[SerializationKeys.hasForeign]
        
        //     acSN <- map[SerializationKeys.acSN]
        //      owner <- map[SerializationKeys.owner]
        //    status <- map[SerializationKeys.status]
    }
    
    private struct SerializationKeys {
        static let ac = "ac"
        //      static let acSN = "acSn"
        static let acType = "acType"
        static let acSeries = "acSeries"
        static let acDesc = "acDescription"
        //     static let owner = "owner"
        static let customer = "customer"
        static let hasForeign = "hasForeign"
        //    static let status = "status"
    }
    
    enum CodingKeys: String, CodingKey {
        case ac = "ac"
        case acType = "acType"
        case acSeries = "acSeries"
        case acDesc = "acDescription"
        case customer = "customer"
        case hasForeign = "hasForeign"
        //  case acSn = "AC_SN"
        //  case owner = "OWNER"
     //   case status = "STATUS"
    }
}


