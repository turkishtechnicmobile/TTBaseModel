//
//  DTSPdfRequestModel.swift
//  NMBaseModel
//
//  Created by Burhan on 18.09.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class DTSPdfRequestModel: RequestModelBase {

    public var filter: String?

    public required init() {
        super.init()
    }

    public required init(map: Map) throws {
        try super.init(map: map)
    }
    
    public convenience init(filter: String) {
        self.init()
        self.filter = filter
    }
    
    open override func dictionaryRepresentation() -> [String: Any] {
        var dictionary = super.dictionaryRepresentation()
        if let value = filter { dictionary[SerializationKeys.filter] = value }
        return dictionary
    }
}

extension DTSPdfRequestModel {
    private struct SerializationKeys {
        static let filter = "Filter"
    }
}
