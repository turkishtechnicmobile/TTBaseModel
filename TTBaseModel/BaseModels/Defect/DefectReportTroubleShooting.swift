//
//  DefectReportTroubleShooting.swift
//  TTBaseModel
//
//  Created by Remzi YILDIRIM on 13.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation

public class DefectReportTroubleShooting: Model {
    public var blobNo: Int?
    public var buyBackRii : String?
    public var controlCategory: String?
    public var countAsCompleted: String?
    public var createdBy: String?
    public var createdDate: Date?
    public var createdFromDrtsSystem: String?
    public var defect: String?
    public var defectItem: Int?
    public var defectType: String?
    public var flight: String?
    public var interfaceCreatedDate: Date?
    public var interfaceExternalReference: String?
    public var interfaceModifiedDate: Date?
    public var modifiedBy: String?
    public var modifiedDate: Date?
    public var notes: Int?
    public var referenceCode: String?
    public var requiredInspectionBy: String?
    public var requiredInspectionDate: Date?
    public var requiredInspectionItem: String?
    public var station: String?
    public var status: String?
    public var troubleShootingBy: String?
    public var troubleShootingCode: String?
    public var troubleShootingDefect: String?
    public var troubleShootingDefectItem: Int?
    public var troubleShootingDefectType: String?
    public var troubleShootingHour: Int?
    public var troubleShootingItem: Int?
    public var troubleShootingMinute: Int?
    public var troubleShootingOn: Date?
    public var troubleShootingText: String?
    public var resolutionCategory: String? // additional
    
    public init() { }
}

extension DefectReportTroubleShooting {
    enum CodingKeys: String, CodingKey {
        case blobNo = "BLOB_NO"
        case buyBackRii = "BUY_BACK_RII"
        case controlCategory = "CONTROL_CATEGORY"
        case countAsCompleted = "COUNT_AS_COMPLETED"
        case createdBy = "CREATED_BY"
        case createdDate = "CREATED_DATE"
        case createdFromDrtsSystem = "CREATED_FROM_DRTS_SYSTEM"
        case defect = "DEFECT"
        case defectItem = "DEFECT_ITEM"
        case defectType = "DEFECT_TYPE"
        case flight = "FLIGHT"
        case interfaceCreatedDate = "INTERFACE_CREATED_DATE"
        case interfaceExternalReference = "INTERFACE_EXTERNAL_REFERENCE"
        case interfaceModifiedDate = "INTERFACE_MODIFIED_DATE"
        case modifiedBy = "MODIFIED_BY"
        case modifiedDate = "MODIFIED_DATE"
        case notes = "NOTES"
        case referenceCode = "REFERENCE_CODE"
        case requiredInspectionBy = "REQUIRED_INSPECTION_BY"
        case requiredInspectionDate = "REQUIRED_INSPECTION_DATE"
        case requiredInspectionItem = "REQUIRED_INSPECTION_ITEM"
        case station = "STATION"
        case status = "STATUS"
        case troubleShootingBy = "TROUBLE_SHOOTING_BY"
        case troubleShootingCode = "TROUBLE_SHOOTING_CODE"
        case troubleShootingDefect = "TROUBLE_SHOOTING_DEFECT"
        case troubleShootingDefectItem = "TROUBLE_SHOOTING_DEFECT_ITEM"
        case troubleShootingDefectType = "TROUBLE_SHOOTING_DEFECT_TYPE"
        case troubleShootingHour = "TROUBLE_SHOOTING_HOUR"
        case troubleShootingItem = "TROUBLE_SHOOTING_ITEM"
        case troubleShootingMinute = "TROUBLE_SHOOTING_MINUTE"
        case troubleShootingOn = "TROUBLE_SHOOTING_ON"
        case troubleShootingText = "TROUBLE_SHOOTING_TEXT"
        case resolutionCategory = "RESOLUTION_CATEGORY"
    }
}

extension DefectReportTroubleShooting: NSCopying {
    public func copy(with zone: NSZone? = nil) -> Any {
        let copy = DefectReportTroubleShooting()
        copy.blobNo = blobNo
        copy.buyBackRii = buyBackRii
        copy.controlCategory = controlCategory
        copy.countAsCompleted = countAsCompleted
        copy.createdBy = createdBy
        copy.createdDate = createdDate
        copy.createdFromDrtsSystem = createdFromDrtsSystem
        copy.defect = defect
        copy.defectItem = defectItem
        copy.defectType = defectType
        copy.flight = flight
        copy.interfaceCreatedDate = interfaceCreatedDate
        copy.interfaceExternalReference = interfaceExternalReference
        copy.interfaceModifiedDate = interfaceModifiedDate
        copy.modifiedBy = modifiedBy
        copy.modifiedDate = modifiedDate
        copy.notes = notes
        copy.referenceCode = referenceCode
        copy.requiredInspectionBy = requiredInspectionBy
        copy.requiredInspectionDate = requiredInspectionDate
        copy.requiredInspectionItem = requiredInspectionItem
        copy.station = station
        copy.status = status
        copy.troubleShootingBy = troubleShootingBy
        copy.troubleShootingCode = troubleShootingCode
        copy.troubleShootingDefect = troubleShootingDefect
        copy.troubleShootingDefectItem = troubleShootingDefectItem
        copy.troubleShootingDefectType = troubleShootingDefectType
        copy.troubleShootingHour = troubleShootingHour
        copy.troubleShootingItem = troubleShootingItem
        copy.troubleShootingMinute = troubleShootingMinute
        copy.troubleShootingOn = troubleShootingOn
        copy.troubleShootingText = troubleShootingText
        copy.resolutionCategory = resolutionCategory
        return copy
    }
}
