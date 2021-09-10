//
//  DTSSmsCodeModel.swift
//  NMBaseModel
//
//  Created by Burhan on 18.09.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class DTSSmsCodeRequestModel : RequestModelBase {
    // MARK: Properties
    public var smsCode:String?
    
    public required init() {
        super.init()
    }
    
    public required init(map: Map) throws {
        try super.init(map: map)
    }
    
    public convenience init(smsCodeModel: DTSSmsCodeModel) {
        self.init()
        self.smsCode = smsCodeModel.smsCode
    }
    
    // MARK: Mapping
    public func mapping(map: Map){
        self.smsCode <- map[SerializationKeys.smsCode]
    }
    
    open override func dictionaryRepresentation() -> [String: Any] {
        var dictionary = super.dictionaryRepresentation()
        
        if let value = smsCode { dictionary[SerializationKeys.smsCode] = value }
        
        return dictionary
    }
}

extension DTSSmsCodeRequestModel {
    private struct SerializationKeys {
        static let smsCode = "smsCode"
    }
}


public class DTSSmsCodeModel : Mappable {
    // MARK: Properties
    public var smsCode:String?
    
    public required init() {
        
    }
    
    public required init(map: Map) {
        
    }
    
    // MARK: Mapping
    public func mapping(map: Map){
        self.smsCode <- map[SerializationKeys.smsCode]
    }
    
}

extension DTSSmsCodeModel {
    private struct SerializationKeys {
        static let smsCode = "smsCode"
    }
}
