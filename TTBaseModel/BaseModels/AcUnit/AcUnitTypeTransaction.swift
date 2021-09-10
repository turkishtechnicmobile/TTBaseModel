//
//  AcUnitTypeTransaction.swift
//  NMBaseModel
//
//  Created by Remzi YILDIRIM on 12.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class AcUnitTypeTransaction: Mappable {
    
    public var ac : String!
    public var unitType : String!
    public var flightLog : String!
    public var flightLeg : Int!
    public var transactionDate : Date!
    public var unitControl : Double!
    public var notes : Int!
    public var createdBy : String!
    public var createdDate : Date!
    public var modifiedBy : String!
    public var modifiedDate : Date!
    public var interfaceTransferBy : String!
    public var interfaceTransferDate : Date!
    public var wo : Int!
    public var taskCard : String!
    public var acUnits = [AcUnit]()

    public required init?(map: Map) { }
    
    public required init?() { }
    
    public func mapping(map: Map){
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/M/yyyy hh:mm:ss a"
        dateFormatter.timeZone = TimeZone.init(secondsFromGMT: 0)
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        
        ac <- map[SerializationKeys.ac]
        unitType <- map[SerializationKeys.unitType]
        flightLeg <- map[SerializationKeys.flightLeg]
        flightLog <- map[SerializationKeys.flightLog]
        
        var tempDateString : String!
        
        tempDateString <- map[SerializationKeys.transactionDate]
        if tempDateString != nil {
            transactionDate = dateFormatter.date(from: tempDateString)
        }

        unitControl <- map[SerializationKeys.unitControl]
        notes <- map[SerializationKeys.notes]
        createdBy <- map[SerializationKeys.createdBy]
        
        tempDateString <- map[SerializationKeys.createdDate]
        if tempDateString != nil {
            createdDate = dateFormatter.date(from: tempDateString)
        }
        
        
        modifiedBy <- map[SerializationKeys.modifiedBy]
        
        tempDateString <- map[SerializationKeys.modifiedDate]
        if tempDateString != nil {
            modifiedDate = dateFormatter.date(from: tempDateString)
        }
        
        var unitTypeControl: String?
        unitTypeControl <- map[SerializationKeys.unitTypeControl]
        
        let count = unitControl == 0 ? 1 : Int(unitControl)
        for index in 1...count {
            
            let obj = AcUnit()
            
            obj.unitType = unitType
            obj.unitTypeControl = unitTypeControl ?? "QUARTS"
            obj.unitControl <- map[SerializationKeys.unitControlIndex + String(describing: index)]
            obj.pn <- map[SerializationKeys.pnIndex + String(describing: index)]
            obj.pnSn <- map[SerializationKeys.pnsnIndex + String(describing: index)]
            obj.pnSnPosition <- map[SerializationKeys.pnsnPositionIndex + String(describing: index)]
            
            tempDateString <- map[SerializationKeys.pnInstallDateIndex + String(describing: index)]
            if tempDateString != nil {
                obj.pnInstallDate = dateFormatter.date(from: tempDateString)
            }
            
            acUnits.append(obj)
        }

        interfaceTransferBy <- map[SerializationKeys.interfaceTransferBy]
        interfaceTransferDate <- map[SerializationKeys.interfaceTransferDate]
        wo <- map[SerializationKeys.wo]
        taskCard <- map[SerializationKeys.taskCard]
    }
}


extension AcUnitTypeTransaction {
    private struct SerializationKeys {
        static let ac = "AC"
        static let wo = "WO"
        static let taskCard = "TASK_CARD"
        static let pnInstallDateIndex = "PN_INSTALL_DATE_0" // 1 ...9
        static let pnsnPositionIndex = "PN_SN_POSITION_0" // 1 ...9
        static let pnsnIndex = "PN_SN_0" // 1 ...9
        static let pnIndex = "PN_0" // 1 ...9
        static let unitControlIndex = "UNIT_CONTROL_0" // 1 ...9
        static let flightLog = "FLIGHT_LOG"
        static let flightLeg = "FLIGHT_LEG"
        static let transactionDate = "TRANSACTION_DATE"
        static let unitType = "UNIT_TYPE"
        static let unitControl = "UNIT_CONTROL"
        static let unitTypeControl = "UNIT_TYPE_CONTROL"
        static let notes = "NOTES"
        static let createdBy = "CREATED_BY"
        static let createdDate = "CREATED_DATE"
        static let modifiedBy = "MODIFIED_BY"
        static let modifiedDate = "MODIFIED_DATE"
        static let interfaceTransferBy = "INTERFACE_ECTM_TRANSFER_BY"
        static let interfaceTransferDate = "INTERFACE_ECTM_TRANSFER_DATE"
    }
}
