//
//  NRCImageRequest.swift
//  TTBaseModel
//
//  Created by Ramazan Memişoğlu on 2.07.2021.
//  Copyright © 2021 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class NRCImageRequest: RequestModelBase {
    // MARK: Properties
    public var blobNo:Int!
    public var blobLine:Int?
    
    public var wo: Int?
    public var taskCard: String?
    public var pn: String?
    public var pnSn: String?

    public var defectType: String?
    public var defect: String?
    public var defectItem: Int?

    public var image: String?
    
    public required init() {
        super.init()
    }
    
    public required init(map: Map) throws {
        try super.init(map: map)
    }
    
    public required init(blobNo:Int, blobLine:Int? = nil) { // get Image // delete Image
        super.init()
        self.blobNo = blobNo
        
        if let line = blobLine {
            self.blobLine = line
        }
    }
    
    public required init(wo:Int,taskCard:String, pn:String, pnSn:String, image:String) { // Add
        super.init()
        self.wo = wo
        self.taskCard = taskCard

        self.pn = pn
        self.pnSn = pnSn
        self.image = image
    }
    
    public required init(defectType:String,defect:String, defectItem:Int, image:String) { // Add
        super.init()
        self.defectType = defectType
        self.defect = defect
        self.defectItem = defectItem
        self.image = image
    }
    
    // MARK: Mapping
    
    open override func dictionaryRepresentation() -> [String: Any] {
        var dictionary = super.dictionaryRepresentation()
        if let value = blobNo { dictionary[SerializationKeys.blobNo] = value }
        if let value = blobLine { dictionary[SerializationKeys.blobLine] = value }
        if let value = wo { dictionary[SerializationKeys.wo] = value }
        if let value = taskCard { dictionary[SerializationKeys.taskCard] = value }
        if let value = pn { dictionary[SerializationKeys.pn] = value }
        if let value = pnSn { dictionary[SerializationKeys.pnSn] = value }
        if let value = defectType { dictionary[SerializationKeys.defectType] = value }
        if let value = defect { dictionary[SerializationKeys.defect] = value }
        if let value = defectItem { dictionary[SerializationKeys.defectItem] = value }
        if let value = image { dictionary[SerializationKeys.image] = value }
        return dictionary
    }
}

extension NRCImageRequest {
    private struct SerializationKeys {
        static let blobNo = "BlobNo"
        static let blobLine = "BlobLine"
        static let wo = "Wo"
        static let taskCard = "TaskCard"
        static let pn = "Pn"
        static let pnSn = "PnSn"
        static let defectType = "defectType"
        static let defect = "defect"
        static let defectItem = "defectItem"
        static let image = "Image"
    }
}
