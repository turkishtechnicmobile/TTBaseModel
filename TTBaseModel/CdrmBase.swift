//
//  CdrmBase.swift
//  TTBaseModel
//
//  Created by Remzi YILDIRIM on 12.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

open class CdrmBase: ResponseModelBase {
    // MARK: Properties
    var definition: String?
    var createdDate: Date?
    var updatedDate: Date?
    var status: Int!
    var how: String! //cdrm desc
    var what: String! // cdrp part

    public required init() {
        super.init()
    }
    
    public required init(map: Map) {
        super.init(map: map)
    }
    
    // MARK: Mapping
    open override func mapping(map: Map) {
        self.definition <- map[SerializationKeys.definition]
        self.status <- map[SerializationKeys.status]
        self.how <- map[SerializationKeys.how]
        self.what <- map[SerializationKeys.what]
        
//        let dateFormatter = ConstantFormatted.dateFormattedMapping()
//        var tempString : String!
//
//        tempString <- map[SerializationKeys.createdDate]
//        self.createdDate = dateFormatter.date(from: tempString)
//
//        tempString <- map[SerializationKeys.updatedDate]
//        self.updatedDate = dateFormatter.date(from: tempString)
    }
}

extension CdrmBase {
    private struct SerializationKeys {
        static let how = "HOW"
        static let what = "WHAT"
        static let definition = "DEFINITION"
        static let createdDate = "CREATED_DATE"
        static let updatedDate = "UPDATED_DATE"
        static let status = "STATUS"
    }
}
