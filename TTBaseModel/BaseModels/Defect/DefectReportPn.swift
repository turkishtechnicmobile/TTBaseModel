//
//  DefectReportPn.swift
//  NMBaseModel
//
//  Created by Remzi YILDIRIM on 13.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation

public class DefectReportPn: Model {
    public var blobNo: Int?
    public var createdBy: String?
    public var createdDate: Date?
    public var defect: String?
    public var defectItem: Int?
    public var defectType: String?
    public var documentNo: Int?
    public var ipc: String?
    public var item: Int?
    public var modifiedBy: String?
    public var modifiedDate: Date?
    public var notes: Int?
    public var picklistProcessed: String?
    public var pn: String?
    public var qty: Int?
    public var qtyReserved: Int?
    public var requiredDate: Date?
    public var reserved: String?
    public var spare: String?
    public var pnDescription: String?

    public init() { }
}

extension DefectReportPn {
    enum CodingKeys: String, CodingKey {
        case blobNo = "BLOB_NO"
        case createdBy = "CREATED_BY"
        case createdDate = "CREATED_DATE"
        case defect = "DEFECT"
        case defectItem = "DEFECT_ITEM"
        case defectType = "DEFECT_TYPE"
        case documentNo = "DOCUMENT_NO"
        case ipc = "IPC"
        case item = "ITEM"
        case modifiedBy = "MODIFIED_BY"
        case modifiedDate = "MODIFIED_DATE"
        case notes = "NOTES"
        case picklistProcessed = "PICKLIST_PROCESSED"
        case pn = "PN"
        case qty = "QTY"
        case qtyReserved = "QTY_RESERVED"
        case requiredDate = "REQUIRED_DATE"
        case reserved = "RESERVED"
        case spare = "SPARE"
        case pnDescription = "PN_DESCRIPTION"
    }
}

extension DefectReportPn: NSCopying {
    public func copy(with zone: NSZone? = nil) -> Any {
        let copy = DefectReportPn()
        copy.blobNo = blobNo
        copy.createdBy = createdBy
        copy.createdDate = createdDate
        copy.defect = defect
        copy.defectItem = defectItem
        copy.defectType = defectType
        copy.documentNo = documentNo
        copy.ipc = ipc
        copy.item = item
        copy.modifiedBy = modifiedBy
        copy.modifiedDate = modifiedDate
        copy.notes = notes
        copy.picklistProcessed = picklistProcessed
        copy.pn = pn
        copy.qty = qty
        copy.qtyReserved = qtyReserved
        copy.requiredDate = requiredDate
        copy.reserved = reserved
        copy.spare = spare
        copy.pnDescription = pnDescription
        return copy
    }
}
