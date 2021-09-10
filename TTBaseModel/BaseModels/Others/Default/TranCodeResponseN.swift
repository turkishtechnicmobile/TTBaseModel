//
//  TranCodeResponseN.swift
//  NMBaseModel
//
//  Created by Remzi YILDIRIM on 12.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class TranCodeResponseN: ResponseModelBase {
    // MARK: Properties
    public var tranCodes: [TranCodeModel]?
    
    public required init() {
        super.init()
    }
    
    public required init(map: Map) {
        super.init(map: map)
    }
    
    // MARK: Mapping
    public override func mapping(map: Map){
        super.mapping(map: map)
        self.tranCodes <- map[SerializationKeys.tranCodes]
    }
}

extension TranCodeResponseN {
    private struct SerializationKeys {
        static let tranCodes = "TranCodes"
    }
}

// MARK: - Model
public class TranCodeModel: Mappable {
    // MARK: Properties
    public var systemCode:String!
    public var desc:String!

    public required init() {
    }
    
    public required init(map: Map) {
    }
    
    // MARK: Mapping
    public func mapping(map: Map) {
        // super.mapping(map: map)
        self.systemCode <- map[SerializationKeys.systemCode]
        self.desc <- map[SerializationKeys.desc]
    }
}

extension TranCodeModel {
    private struct SerializationKeys {
        static let systemCode = "SYSTEM_CODE"
        static let desc = "SYSTEM_CODE_DESCRIPTION"
    }
}
