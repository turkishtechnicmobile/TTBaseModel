//
//  ACUnitTypeTransactionResponse.swift
//  TTBaseModel
//
//  Created by Remzi YILDIRIM on 13.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class ACUnitTypeTransactionResponse : ResponseModelBase {
    // MARK: Properties
    public var transactions: [AcUnitTypeTransaction]?
    
    public required init() {
        super.init()
    }
    
    public required init(map: Map) {
        super.init(map: map)
    }
    
    // MARK: Mapping
    public override func mapping(map: Map){
        super.mapping(map: map)
        self.transactions <- map[SerializationKeys.transactions]
    }
}

extension ACUnitTypeTransactionResponse {
    private struct SerializationKeys {
        static let transactions = "AcUnitTypeTransactions"
    }
}
