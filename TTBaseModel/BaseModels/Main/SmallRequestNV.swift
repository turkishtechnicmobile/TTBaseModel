//
//  SmallRequestNV.swift
//  TTBaseModel
//
//  Created by MnzfM on 26.11.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

open class SmallRequestNV: RequestModelBase {
    
    public var statusList:[String]?
    public var ac:String?
    public var woCategory:String?
    public var crsDate:String?

    public required init() {
        super.init()
    }
    
    public required init(map: Map) throws {
        try super.init(map: map)
    }
    
    public required init(ac:String?, woCategory:String?, status:[WOStatus]?) { // DTS Workorder için
        super.init()
        
        self.ac = ac
        self.woCategory = woCategory
        
        if let status = status {
            let statusStr = status.map { $0.value() }
            self.statusList = statusStr
        }
    }
    
    public required init(crsDate:String?) { // DTS Archives için
        super.init()
        self.crsDate = crsDate
    }
    
    // MARK: Mapping
    open override func dictionaryRepresentation() -> [String: Any] {
        var dictionary = super.dictionaryRepresentation()
        if let value = statusList { dictionary[SerializationKeys.statusList] = value }
        if let value = ac { dictionary[SerializationKeys.ac] = value }
        if let value = woCategory { dictionary[SerializationKeys.woCategory] = value}
        if let value = crsDate { dictionary[SerializationKeys.crsDate] = value}
        return dictionary
    }
}

extension SmallRequestNV {
    private struct SerializationKeys {
        static let statusList = "statusList"
        static let ac = "ac"
        static let woCategory = "woCategory"
        static let crsDate = "crsDate"
    }
}
