//
//  Defect.swift
//  NMBaseModel
//
//  Created by Remzi YILDIRIM on 13.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation

public class Defect: Model {
    public var defectType : String!
    public var defect : String!
    public var defectItem : Int!
    public var status : String!
    public var ac : String?
    public var chapter : Int!
    public var section : Int!
//    public var paragraph : Int!
    public var flight : String?
//    public var fuel : Int!
//    public var delay : String!
//    public var delayHours : Int!
//    public var delayMinutes : Int!
//    public var ifsd : String!
//    public var cancellation : String!
    public var defectDescription : String!
    public var defectCategory : String?
    public var mddr : String?
    public var `defer` : String?
    public var deferBy : String?
    public var deferDate : Date?
    public var deferToDate : Date?
    public var mel : String?
    public var melNumber : String?
    public var reportedBy : String?
    public var reportedDate : Date!
    public var resolutionDescription : String?
    public var resolutionCategory : String?
    public var resolvedBy : String?
    public var resolvedDate : Date?
    public var wo : Int!
    public var taskCard : String?
    public var faultConfirm : String? //  "CONFIRM"
    public var notes : Int?
    public var createdBy : String?
    public var createdDate : Date?
    public var modifiedBy : String?
    public var modifiedDate : Date?
    public var deferCategory : String?
    public var station : String!
//    public var blobNo : Int!
//    public var recurrent : Int!
    public var flightPhase : String?
//    public var authorization : String!
    public var reliabilityControl : String?
    public var scheduleHours : Int?
    public var scheduleCycles : Int?
    public var scheduleDays : Int?
    public var deferToHour : Int?
    public var deferToMinute : Int?
    public var resolvedLocation : String?
//    public var melTitle : String!
//    public var ddpg : String!
    public var reportedHours : Int?
    public var reportedMinutes : Int?
//    public var deferFromWO : Int!
//    public var deferFromTaskCard : String!
//    public var internalCapability : String!
//    public var deferToNextEc : String!
    public var skill : String?
    public var manHour : Int?
    public var manRequired : Int?
//    public var authorizationStatus : String!
//    public var authorizationBy : String!
//    public var authorizationDate : Date!
    public var capabilityArea : String?
    public var planDefect : String? // "YES"
//    public var sdr : String!
    public var inspectedBy : String?
//    public var dispatcherNotified : String!
//    public var authorizationStausSecond : Int!
//    public var authorizationBySecond : Int!
//    public var authorizationDateSecond : Date!
//    public var authorizationRequireSecond : String!
//    public var authorizationControl : String!
//    public var resolutionDefectType : String!
//    public var resolutionDefect : String!
//    public var resolutionDefectITem : Int!
    public var repeatNumber : Int?
    public var completedNumber : Int?
//    public var acPosition : String!
//    public var rootCause : String!
//    public var requiredInspectionItem : String!
//    public var estTurnAroundGroundHrs : Int!
//    public var estTurnAroundaGroundMns : Int!
    public var deferHour : Int?
    public var deferMinute : Int?
//    public var overrideMddrAuto : String!
//    public var crossReferenceType : String!
//    public var crossReferenceNumber : Int!
//    public var requiredInspectionBy : String!
    public var deferNotes : String?
//    public var releaseToServiceBy : String!
//    public var releaseToServiceDate : Date!
    public var resolvedHour : Int?
    public var resolvedMinute : Int?
//    public var mis : String!
//    public var linkingSeq : String!
//    public var linkingSeqPrevious : String!
//    public var linkingDefect : String!
//    public var linkingDefectItem : Int!
//    public var linkingDefectType : String!
//    public var dispatcherNotifiedResolution : String!
//    public var generatedFromEc : String!
//    public var authorizationNotes : Int!
//    public var asc : String!
//    public var initialDueDate : Date!
//    public var defectGate : String!
//    public var cancelledFlight : String!
//    public var delayedFlight : String!
//    public var documentNo : Int!
//    public var notToAllowConcession : String!
    public var melCalendarDaysFlag : String?
//    public var createdFrom : String!
//    public var interfaceExternalReference : String!
    public var defectForPn : String?
    public var defectForSn : String?
//    public var pnIncident : String!
//    public var engineFullLoadTakeOff : String!
//    public var deferDateOrig : Date!
//    public var planDate : Date!
//    public var planHour : Int!
//    public var planMinutes : Int!
//    public var planAcHours : Int!
//    public var planAcMinutes : Int!
//    public var planAcCycles : Int!
//    public var planAcBrakeCycles : Int!
//    public var deferFromTcAc : String!
//    public var deferFromTcPn : String!
//    public var deferFromTcSn : String!
//    public var ongoingTroubleShooting : String!
//    public var interfaceCreatedDate : Date!
//    public var interfaceModifiedDate : Date!
//    public var previousInterfaceTransaction : Int!
//    public var sabreMessageNumber : Int!
//    public var cooRemarks : String!
//    public var defectForPnStatus : String!
    public var planningDept : String? //ALL
    public var planningSubDept : String?
    public var scheduleHoursRepeat : Int?
    public var scheduleCyclesRepeat : Int?
    public var scheduleDaysRepeat : Int?
    public var deferToDateRepeat : Date?
    public var deferToHourRepeat : Int?
    public var deferToMinuteRepeat : Int?
//    public var hourCalendarControl : String!
//    public var interfaceEctmTransferBy : String!
//    public var interfaceEctmTransferDate : Date!
//    public var cador : String!
//    public var cadorWarranty : String!
//    public var cadorDamage : String!
//    public var dayOfDiscovery : String!
//    public var reference : String!
//    public var cpcpId : Int!
    public var melSub : String?
    public var majorRepair : String?
//    public var templateTaskCard : String!
//    public var groundTimeRequire : Int!
//    public var drtsSourceSystemId : String!
//    public var drtsSystemKbString : String!
//    public var uniqueId : Int!
//    public var inspectorSkill : String!
//    public var inspectorManHours : Int!
//    public var inspectorManRequire : Int!
//    public var interfaceDeferralReference : String!
//    public var inUse : String!
    public var currentUser : String?
//    public var defectPosition : String!
//    public var drtsSystemUrl : String!
//    public var mocItemDescription : String!
//    public var constraintCode1 : String!
//    public var constraintCode2 : String!
//    public var paperRequired : String!
//    public var mtcContacted : String!
//    public var mtcAlert : String!
//    public var noOfPrint : Int!
//    public var eom : String! // deleted
//    public var eomRepeat : String! // deleted
//    public var procedure : String!
//    public var melOperationalRetrictions : String! // deleted
//    public var operationsNote : String!
//    public var reliabilityCheck : String!
//    public var restrictionsUser : String!
//    public var restrictionsDate : Date!
//    public var noteUser : String!
//    public var noteDate : Date! // deleted
//    public var deferToNextEcRepeat : String!  // deleted
//    public var notesFromPanel : String!
//    public var tempSabre : String!  // deleted
    public var flightLog : String?
    public var flightLeg : Int?
    public var flightDate : Date?
//    public var buyPackRII : String! // deleted
    public var etops : String?
    public var seatNumber : Int?
    public var seatLetter : String?
    public var seatSeverity : String?
//    public var mocItemDescriptionLinkMel : String!
    public var dueDate : Date?
//    public var flightResolved : String!
//    public var asr : String!
//    public var melAlert : String!
    public var cdccl : String?
    public var criticalTask : String?
    public var cdrmLocationCode : String?
    public var cdrmPartCode : String?
    public var cdrmDescriptionCode : String?
//    public var cabinPartId : Int!
//    public var iosSync : Date!
//    public var cabinPosition : String!
    public var autoNrtc: Int? // additional
    public var sourceCode: String? // additional
    public var isNew: Bool?
    public var startReportedDate: Date? // additional
    public var endReportedDate: Date? // additional
    public var troubleShootingCount:Int!

    public init() { }
}

extension Defect {
    enum CodingKeys: String, CodingKey {
        case defectType = "DEFECT_TYPE"
        case defect = "DEFECT"
        case defectItem = "DEFECT_ITEM"
        case status = "STATUS"
        case ac = "AC"
        case chapter = "CHAPTER"
        case section = "SECTION"
//        case paragraph = "PARAGRAPH"
        case flight = "FLIGHT"
//        case fuel = "FUEL"
//        case delay = "DELAY"
//        case delayHours = "DELAYS_HOURS"
//        case delayMinutes = "DELAYS_MINUTES"
//        case ifsd = "I_F_S_D"
//        case cancellation = "CANCELLATION"
        case defectDescription = "DEFECT_DESCRIPTION"
        case defectCategory = "DEFECT_CATEGORY"
        case mddr = "MDDR"
        case `defer` = "DEFER"
        case deferBy = "DEFER_BY"
        case deferDate = "DEFER_DATE"
        case deferToDate = "DEFER_TO_DATE"
        case mel = "MEL"
        case melNumber = "MEL_NUMBER"
        case reportedBy = "REPORTED_BY"
        case reportedDate = "REPORTED_DATE"
        case resolutionDescription = "RESOLUTION_DESCRIPTION"
        case resolutionCategory = "RESOLUTION_CATEGORY"
        case resolvedBy = "RESOLVED_BY"
        case resolvedDate = "RESOLVED_DATE"
        case wo = "WO"
        case taskCard = "TASK_CARD"
        case faultConfirm = "FAULT_CONFIRM"
        case notes = "NOTES"
        case createdBy = "CREATED_BY"
        case createdDate = "CREATED_DATE"
        case modifiedBy = "MODIFIED_BY"
        case modifiedDate = "MODIFIED_DATE"
        case deferCategory = "DEFER_CATEGORY"
        case station = "STATION"
//        case blobNo = "BLOB_NO"
//        case recurrent = "RECURRENT"
        case flightPhase = "FLIGHT_PHASE"
//        case authorization = "AUTHORIZATION"
        case reliabilityControl = "RELIABILITY_CONTROL"
        case scheduleHours = "SCHEDULE_HOURS"
        case scheduleCycles = "SCHEDULE_CYCLES"
        case scheduleDays = "SCHEDULE_DAYS"
        case deferToHour = "DEFER_TO_HOUR"
        case deferToMinute = "DEFER_TO_MINUTE"
        case resolvedLocation = "RESOLVED_LOCATION"
//        case melTitle = "MEL_TITLE"
//        case ddpg = "DDPG"
        case reportedHours = "REPORTED_HOUR"
        case reportedMinutes = "REPOTED_MINUTE" // different
//        case deferFromWO = "DEFER_FROM_WO"
//        case deferFromTaskCard = "DEFER_FROM_TASK_CARD"
//        case internalCapability = "INTERNAL_CAPABILITY"
//        case deferToNextEc = "DEFER_TO_NEXT_EC"
        case skill = "SKILL"
        case manHour = "MAN_HOURS"
        case manRequired = "MAN_REQUIRED"
//        case authorizationStatus = "AUTHORIZATION_STATUS"
//        case authorizationBy = "AUTHORIZATION_BY"
//        case authorizationDate = "AUTHORIZATION_DATE"
        case capabilityArea = "CAPABILITY_AREA"
        case planDefect = "PLAN_DEFECT"
//        case sdr = "SDR"
        case inspectedBy = "INSPECTED_BY"
//        case dispatcherNotified = "DISPATCHER_NOTIFIED"
//        case authorizationStausSecond = "AUTHORIZATION_STATUS_SENCOND"
//        case authorizationBySecond = "AUTHORIZATION_BY_SECOND"
//        case authorizationDateSecond = "AUTOHRIZATION_DATE_SECOND"
//        case authorizationRequireSecond = "AUTHORIZATION_REQUIRE_SECOND"
//        case authorizationControl = "AUTHORIZATION_CONTROL"
//        case resolutionDefectType = "RESOLUTION_DEFECT_TYPE"
//        case resolutionDefect = "RESOLUTION_DEFECT"
//        case resolutionDefectITem = "RESOLUTION_DEFECT_ITEM"
        case repeatNumber = "REPEAT_NUMBER"
        case completedNumber = "COMPLETED_NUMBER"
//        case acPosition = "AC_POSITION"
//        case rootCause = "ROOT_CAUSE"
//        case requiredInspectionItem = "REQUIRED_INSPECTION_ITEM"
//        case estTurnAroundGroundHrs = "EST_TURN_AROUND_GROUND_HRS"
//        case estTurnAroundaGroundMns = "EST_TURN_AROUND_GROUND_MNS"
        case deferHour = "DEFER_HOUR"
        case deferMinute = "DEFER_MINUTE"
//        case overrideMddrAuto = "OVERRIDE_MDDR_AUTO"
//        case crossReferenceType = "CROSS_REFERENCE_TYPE"
//        case crossReferenceNumber = "CROSS_REFERENCE_NUMBER"
//        case requiredInspectionBy = "REQUIRED_INSPECTION_BY"
        case deferNotes = "DEFER_NOTES"
//        case releaseToServiceBy = "RELEASE_TO_SERVICE_BY"
//        case releaseToServiceDate = "RELEASE_TO_SERVICE_DATE"
        case resolvedHour = "RESOLVED_HOUR"
        case resolvedMinute = "RESOLVED_MINUTE"
//        case mis = "MIS"
//        case linkingSeq = "LINKING_SEQ"
//        case linkingSeqPrevious = "LINKING_SEQ_PREVIOUS"
//        case linkingDefect = "LINKING_DEFECT"
//        case linkingDefectItem = "LINKING_DEFECT_ITEM"
//        case linkingDefectType = "LINKING_DEFECT_TYPE"
//        case dispatcherNotifiedResolution = "DISPATCHER_NOTIFIED_RESOLUTION"
//        case generatedFromEc = "GENERATED_FROM_EC"
//        case authorizationNotes = "AUTHORIZATION_NOTES"
//        case asc = "ASC"
//        case initialDueDate = "INITIAL_DUE_DATE"
//        case defectGate = "DEFECT_GATE"
//        case cancelledFlight = "CANCELED_FLIGHT"
//        case delayedFlight = "DELAYED_FLIGHT"
//        case documentNo = "DOCUMENT_NO"
//        case notToAllowConcession = "NOT_DO_ALLOW_CONCESSION"
        case melCalendarDaysFlag = "MEL_CALENDAR_DAYS_FLAG"
//        case createdFrom = "CREATED_FROM"
//        case interfaceExternalReference = "INTERFACE_EXTERNAL_REFERENCE"
        case defectForPn = "DEFECT_FOR_PN"
        case defectForSn = "DEFECT_FOR_PN_SN"
//        case pnIncident = "PN_INCIDENT"
//        case engineFullLoadTakeOff = "ENGINE_FULL_LOAD_TAKEOFF"
//        case deferDateOrig = "DEFER_DATE_ORIG"
//        case planDate = "PLAN_DATE"
//        case planHour = "PLAN_HOUR"
//        case planMinutes = "PLAN_MINUTE"
//        case planAcHours = "PLAN_AC_HOURS"
//        case planAcMinutes = "PLAN_AC_MINUTES"
//        case planAcCycles = "PLAN_AC_CYCLES"
//        case planAcBrakeCycles = "PLAN_AC_BRAKE_CYCLES"
//        case deferFromTcAc = "DEFER_FROM_TC_AC"
//        case deferFromTcPn = "DEFER_FROM_TC_PN"
//        case deferFromTcSn = "DEFER_FROM_TC_SN"
//        case ongoingTroubleShooting = "ONGOING_TROUBLE_SHOOTING"
//        case interfaceCreatedDate = "INTERFACE_CREATED_DATE"
//        case interfaceModifiedDate = "INTERFACE_MODIFIED_DATE"
//        case previousInterfaceTransaction = "PREVIOUS_INTERFACE_TRANSACTION"
//        case sabreMessageNumber = "SABRE_MESSAGE_NUMBER"
//        case cooRemarks = "COO_REMARKS"
//        case defectForPnStatus = "DEFECT_FOR_PN_STATUS"
        case planningDept = "PLANNING_DEPT"
        case planningSubDept = "PLANNING_SUB_DEPT"
        case scheduleHoursRepeat = "SCHEDULE_HOURS_REPEAT"
        case scheduleCyclesRepeat = "SCHEDULE_CYCLES_REPEAT"
        case scheduleDaysRepeat = "SCHEDULE_DAYS_REPEAT"
        case deferToDateRepeat = "DEFER_TO_DATE_REPEAT"
        case deferToHourRepeat = "DEFER_TO_HOUR_REPEAT"
        case deferToMinuteRepeat = "DEFER_TO_MINUTE_REPEAT"
//        case hourCalendarControl = "HOUR_CALENDAR_CONTROL"
//        case interfaceEctmTransferBy = "INTERFACE_ECTM_TRANSFER_BY"
//        case interfaceEctmTransferDate = "INTERFACE_ECTM_TRANSFER_DATE"
//        case cador = "CADOR"
//        case cadorWarranty = "CADOR_WARRANTY"
//        case cadorDamage = "CADOR_DAMAGE"
//        case dayOfDiscovery = "DAY_OF_DISCOVERY"
//        case reference = "REFERENCE"
//        case cpcpId = "CPCP_ID"
        case melSub = "MEL_SUB"
        case majorRepair = "MAJOR_REPAIR"
//        case templateTaskCard = "TEMPLATE_TASK_CARD"
//        case groundTimeRequire = "GROUND_TIME_REQUIRE"
//        case drtsSourceSystemId = "DRTS_SOURCE_SYSTEM_ID"
//        case drtsSystemKbString = "DRTS_SYSTEM_KB_STRING"
//        case uniqueId = "UNIQUE_ID"
//        case inspectorSkill = "INSPECTOR_SKILL"
//        case inspectorManHours = "INSPECTOR_MAN_HOURS"
//        case inspectorManRequire = "INSPECTOR_MAN_REQUIRE"
//        case interfaceDeferralReference = "INTERFACE_DEFERRAL_REFERENCE"
//        case inUse = "IN_USE"
        case currentUser = "CURRENT_USER"
//        case defectPosition = "DEFECT_POSITION"
//        case drtsSystemUrl = "DRTS_SYSTEM_URL"
//        case mocItemDescription = "MOC_ITEM_DESCRIPTION"
//        case constraintCode1 = "CONSTRAINT_CODE_1"
//        case constraintCode2 = "CONSTRAINT_CODE_2"
//        case paperRequired = "PAPER_REQUIRED"
//        case mtcContacted = "MTC_CONTACTED"
//        case mtcAlert = "MTC_ALERT"
//        case noOfPrint = "NO_OF_PRINT"
//        case eom = "EOM"
//        case eomRepeat = "EOM_REPEAT"
//        case procedure = "PROCEDURE"
//        case melOperationalRetrictions = "MEL_OPERATIONAL_RESTRICTIONS"
//        case operationsNote = "OPERATONS_NOTE"
//        case reliabilityCheck = "RELIABILITY_CHECK"
//        case restrictionsUser = "RESTRICTIONS_USER"
//        case restrictionsDate = "RESTRICTIONS_DATE"
//        case noteUser = "NOTE_USER"
//        case noteDate = "NOTE_DATE"
//        case deferToNextEcRepeat = "DEFER_TO_NEXT_EC_REPEAT"
//        case notesFromPanel = "NOTES_FROM_PANEL"
//        case tempSabre = "TEMP_SABRE"
        case flightLog = "FLIGHT_LOG"
        case flightLeg = "FLIGHT_LEG"
        case flightDate = "FLIGHT_DATE"
//        case buyPackRII = "BUY_PACK_RII"
        case etops = "ETOPS"
        case seatNumber = "SEAT_NUMBER"
        case seatLetter = "SEAT_LETTER"
        case seatSeverity = "SEAT_SEVERITY"
//        case mocItemDescriptionLinkMel = "MOC_ITEM_DESCRIPTION_LINK_MEL"
        case dueDate = "DUE_DATE"
//        case flightResolved = "FLIGHT_RESOLVED"
//        case asr = "ASR"
//        case melAlert = "MEL_ALERT"
        case cdccl = "CDCCL"
        case criticalTask = "CRITICAL_TASK"
        case cdrmLocationCode = "CDRM_LOCATION_CODE"
        case cdrmPartCode = "CDRM_PART_CODE"
        case cdrmDescriptionCode = "CDRM_DESCRIPTION_CODE"
//        case cabinPartId = "CABIN_PART_ID"
//        case iosSync = "IOS_SYNC"
//        case cabinPosition = "CABIN_POSITION"
        case autoNrtc = "AUTO_NRTC" // additional
        case sourceCode = "SOURCE_CODE" // additional
        case isNew = "IS_NEW" // additional
        case startReportedDate = "FROM_REPORTED_DATE" // additional
        case endReportedDate = "TO_REPORTED_DATE" // additional
        case troubleShootingCount = "TS_COUNT"
    }
}

extension Defect: NSCopying {
    public func copy(with zone: NSZone? = nil) -> Any {
        let copy = Defect()
        copy.defectType = defectType
        copy.defect = defect
        copy.defectItem = defectItem
        copy.status = status
        copy.ac = ac
        copy.chapter = chapter
        copy.section = section
//        copy.paragraph = paragraph
        copy.flight = flight
//        copy.fuel = fuel
//        copy.delay = delay
//        copy.delayHours = delayHours
//        copy.delayMinutes = delayMinutes
//        copy.ifsd = ifsd
//        copy.cancellation = cancellation
        copy.defectDescription = defectDescription
        copy.defectCategory = defectCategory
        copy.mddr = mddr
        copy.defer = `defer`
        copy.deferBy = deferBy
        copy.deferDate = deferDate
        copy.deferToDate = deferToDate
        copy.mel = mel
        copy.melNumber = melNumber
        copy.reportedBy = reportedBy
        copy.reportedDate = reportedDate
        copy.resolutionDescription = resolutionDescription
        copy.resolutionCategory = resolutionCategory
        copy.resolvedBy = resolvedBy
        copy.resolvedDate = resolvedDate
        copy.wo = wo
        copy.taskCard = taskCard
        copy.faultConfirm = faultConfirm
        copy.notes = notes
        copy.createdBy = createdBy
        copy.createdDate = createdDate
        copy.modifiedBy = modifiedBy
        copy.modifiedDate = modifiedDate
        copy.deferCategory = deferCategory
        copy.station = station
//        copy.blobNo = blobNo
//        copy.recurrent = recurrent
        copy.flightPhase = flightPhase
//        copy.authorization = authorization
        copy.reliabilityControl = reliabilityControl
        copy.scheduleHours = scheduleHours
        copy.scheduleCycles = scheduleCycles
        copy.scheduleDays = scheduleDays
        copy.deferToHour = deferToHour
        copy.deferToMinute = deferToMinute
        copy.resolvedLocation = resolvedLocation
//        copy.melTitle = melTitle
//        copy.ddpg = ddpg
        copy.reportedHours = reportedHours
        copy.reportedMinutes = reportedMinutes
//        copy.deferFromWO = deferFromWO
//        copy.deferFromTaskCard = deferFromTaskCard
//        copy.internalCapability = internalCapability
//        copy.deferToNextEc = deferToNextEc
        copy.skill = skill
        copy.manHour = manHour
        copy.manRequired = manRequired
//        copy.authorizationStatus = authorizationStatus
//        copy.authorizationBy = authorizationBy
//        copy.authorizationDate = authorizationDate
        copy.capabilityArea = capabilityArea
        copy.planDefect = planDefect
//        copy.sdr = sdr
        copy.inspectedBy = inspectedBy
//        copy.dispatcherNotified = dispatcherNotified
//        copy.authorizationStausSecond = authorizationStausSecond
//        copy.authorizationBySecond = authorizationBySecond
//        copy.authorizationDateSecond = authorizationDateSecond
//        copy.authorizationRequireSecond = authorizationRequireSecond
//        copy.authorizationControl = authorizationControl
//        copy.resolutionDefectType = resolutionDefectType
//        copy.resolutionDefect = resolutionDefect
//        copy.resolutionDefectITem = resolutionDefectITem
        copy.repeatNumber = repeatNumber
        copy.completedNumber = completedNumber
//        copy.acPosition = acPosition
//        copy.rootCause = rootCause
//        copy.requiredInspectionItem = requiredInspectionItem
//        copy.estTurnAroundGroundHrs = estTurnAroundGroundHrs
//        copy.estTurnAroundaGroundMns = estTurnAroundaGroundMns
        copy.deferHour = deferHour
        copy.deferMinute = deferMinute
//        copy.overrideMddrAuto = overrideMddrAuto
//        copy.crossReferenceType = crossReferenceType
//        copy.crossReferenceNumber = crossReferenceNumber
//        copy.requiredInspectionBy = requiredInspectionBy
        copy.deferNotes = deferNotes
//        copy.releaseToServiceBy = releaseToServiceBy
//        copy.releaseToServiceDate = releaseToServiceDate
        copy.resolvedHour = resolvedHour
        copy.resolvedMinute = resolvedMinute
//        copy.mis = mis
//        copy.linkingSeq = linkingSeq
//        copy.linkingSeqPrevious = linkingSeqPrevious
//        copy.linkingDefect = linkingDefect
//        copy.linkingDefectItem = linkingDefectItem
//        copy.linkingDefectType = linkingDefectType
//        copy.dispatcherNotifiedResolution = dispatcherNotifiedResolution
//        copy.generatedFromEc = generatedFromEc
//        copy.authorizationNotes = authorizationNotes
//        copy.asc = asc
//        copy.initialDueDate = initialDueDate
//        copy.defectGate = defectGate
//        copy.cancelledFlight = cancelledFlight
//        copy.delayedFlight = delayedFlight
//        copy.documentNo = documentNo
//        copy.notToAllowConcession = notToAllowConcession
        copy.melCalendarDaysFlag = melCalendarDaysFlag
//        copy.createdFrom = createdFrom
//        copy.interfaceExternalReference = interfaceExternalReference
        copy.defectForPn = defectForPn
        copy.defectForSn = defectForSn
//        copy.pnIncident = pnIncident
//        copy.engineFullLoadTakeOff = engineFullLoadTakeOff
//        copy.deferDateOrig = deferDateOrig
//        copy.planDate = planDate
//        copy.planHour = planHour
//        copy.planMinutes = planMinutes
//        copy.planAcHours = planAcHours
//        copy.planAcMinutes = planAcMinutes
//        copy.planAcCycles = planAcCycles
//        copy.planAcBrakeCycles = planAcBrakeCycles
//        copy.deferFromTcAc = deferFromTcAc
//        copy.deferFromTcPn = deferFromTcPn
//        copy.deferFromTcSn = deferFromTcSn
//        copy.ongoingTroubleShooting = ongoingTroubleShooting
//        copy.interfaceCreatedDate = interfaceCreatedDate
//        copy.interfaceModifiedDate = interfaceModifiedDate
//        copy.previousInterfaceTransaction = previousInterfaceTransaction
//        copy.sabreMessageNumber = sabreMessageNumber
//        copy.cooRemarks = cooRemarks
//        copy.defectForPnStatus = defectForPnStatus
        copy.planningDept = planningDept
        copy.planningSubDept = planningSubDept
        copy.scheduleHoursRepeat = scheduleHoursRepeat
        copy.scheduleCyclesRepeat = scheduleCyclesRepeat
        copy.scheduleDaysRepeat = scheduleDaysRepeat
        copy.deferToDateRepeat = deferToDateRepeat
        copy.deferToHourRepeat = deferToHourRepeat
        copy.deferToMinuteRepeat = deferToMinuteRepeat
//        copy.hourCalendarControl = hourCalendarControl
//        copy.interfaceEctmTransferBy = interfaceEctmTransferBy
//        copy.interfaceEctmTransferDate = interfaceEctmTransferDate
//        copy.cador = cador
//        copy.cadorWarranty = cadorWarranty
//        copy.cadorDamage = cadorDamage
//        copy.dayOfDiscovery = dayOfDiscovery
//        copy.reference = reference
//        copy.cpcpId = cpcpId
        copy.melSub = melSub
        copy.majorRepair = majorRepair
//        copy.templateTaskCard = templateTaskCard
//        copy.groundTimeRequire = groundTimeRequire
//        copy.drtsSourceSystemId = drtsSourceSystemId
//        copy.drtsSystemKbString = drtsSystemKbString
//        copy.uniqueId = uniqueId
//        copy.inspectorSkill = inspectorSkill
//        copy.inspectorManHours = inspectorManHours
//        copy.inspectorManRequire = inspectorManRequire
//        copy.interfaceDeferralReference = interfaceDeferralReference
//        copy.inUse = inUse
        copy.currentUser = currentUser
//        copy.defectPosition = defectPosition
//        copy.drtsSystemUrl = drtsSystemUrl
//        copy.mocItemDescription = mocItemDescription
//        copy.constraintCode1 = constraintCode1
//        copy.constraintCode2 = constraintCode2
//        copy.paperRequired = paperRequired
//        copy.mtcContacted = mtcContacted
//        copy.mtcAlert = mtcAlert
//        copy.noOfPrint = noOfPrint
//        copy.eom = eom
//        copy.eomRepeat = eomRepeat
//        copy.procedure = procedure
//        copy.melOperationalRetrictions = melOperationalRetrictions
//        copy.operationsNote = operationsNote
//        copy.reliabilityCheck = reliabilityCheck
//        copy.restrictionsUser = restrictionsUser
//        copy.restrictionsDate = restrictionsDate
//        copy.noteUser = noteUser
//        copy.noteDate = noteDate
//        copy.deferToNextEcRepeat = deferToNextEcRepeat
//        copy.notesFromPanel = notesFromPanel
//        copy.tempSabre = tempSabre
        copy.flightLog = flightLog
        copy.flightLeg = flightLeg
        copy.flightDate = flightDate
//        copy.buyPackRII = buyPackRII
        copy.etops = etops
        copy.seatNumber = seatNumber
        copy.seatLetter = seatLetter
        copy.seatSeverity = seatSeverity
//        copy.mocItemDescriptionLinkMel = mocItemDescriptionLinkMel
        copy.dueDate = dueDate
//        copy.flightResolved = flightResolved
//        copy.asr = asr
//        copy.melAlert = melAlert
        copy.cdccl = cdccl
        copy.criticalTask = criticalTask
        copy.cdrmLocationCode = cdrmLocationCode
        copy.cdrmPartCode = cdrmPartCode
        copy.cdrmDescriptionCode = cdrmDescriptionCode
//        copy.cabinPartId = cabinPartId
//        copy.iosSync = iosSync
//        copy.cabinPosition = cabinPosition
        copy.troubleShootingCount = troubleShootingCount
        return copy
    }
}
