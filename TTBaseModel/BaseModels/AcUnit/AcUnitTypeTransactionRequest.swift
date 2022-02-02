//
//  AcUnitTypeTransactionRequest.swift
//  TTBaseModel
//
//  Created by Remzi YILDIRIM on 12.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class AcUnitTypeTransactionRequest: RequestModelBase {
    public var ac: String?
    public var unitType: String?
    public var flightLog: String?
    public var flightLeg: Int?
    public var transactionDate: Date?
    public var createdBy: String?
    public var modifiedBy: String?
    public var acUnits = [AcUnit]()
    
    public override func dictionaryRepresentation() -> [String : Any] {
        var dictionary = super.dictionaryRepresentation()
        
        if let value = ac { dictionary[SerializationKeys.ac] = value }
        if let value = unitType { dictionary[SerializationKeys.unitType] = value }
        if let value = flightLog { dictionary[SerializationKeys.flightLog] = value }
        if let value = flightLeg { dictionary[SerializationKeys.flightLeg] = value }
        if let value = transactionDate { dictionary[SerializationKeys.transactionDate] = value }
        if let value = createdBy { dictionary[SerializationKeys.createdBy] = value }
        if let value = modifiedBy { dictionary[SerializationKeys.modifiedBy] = value }

        acUnits.enumerated().forEach {
            dictionary["\(SerializationKeys.unitControl)\($0.offset + 1)"] = $0.element.unitControl
        }
        
        return dictionary
    }
}

extension AcUnitTypeTransactionRequest {
    private struct SerializationKeys {
        static let ac = "Ac"
        static let unitType = "UnitType"
        static let flightLog = "FlightLog"
        static let flightLeg = "FlightLeg"
        static let transactionDate = "TransactionDate"
        static let unitControl = "UnitControl"
        static let createdBy = "CreatedBy"
        static let modifiedBy = "ModifiedBy"
    }
}
