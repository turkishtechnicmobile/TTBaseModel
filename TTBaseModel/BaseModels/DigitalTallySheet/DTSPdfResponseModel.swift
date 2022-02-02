//
//  DTSPdfResponseModel.swift
//  TTBaseModel
//
//  Created by MnzfM on 3.03.2021.
//  Copyright © 2021 Turkish Technic. All rights reserved.
//


import Foundation
import ObjectMapper

public class DTSPdfResponseModel : Mappable {

    public var pdfUri: String?
    public var isAlert: Bool?

    public required init() {
    }
    
    public required init(map: Map) {
    }
    
    // MARK: Mapping
    public func mapping(map: Map){
        // super.mapping(map: map)
        self.pdfUri <- map[SerializationKeys.pdfUri]
        self.isAlert <- map[SerializationKeys.isAlert]
    }
}

extension DTSPdfResponseModel {
    private struct SerializationKeys {
        static let pdfUri = "pdfUrl"
        static let isAlert = "isAlert"
    }
}
