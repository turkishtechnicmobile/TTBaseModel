//
//  DefectsAndMels.swift
//  NMBaseModel
//
//  Created by Remzi YILDIRIM on 13.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//
/*
import Foundation
import ObjectMapper

public class DefectsAndMels: Mappable, Model {
    public var defectType : String!
    public var defect : String!
    public var defectItem : Int!
    public var status : String!
    public var ac : String!
    public var chapter : Int!
    public var section : Int!
    public var paragraph : Int!
    public var flight : String!
    public var fuel : Int!
    public var delay : String!
    public var delayHours : Int!
    public var delayMinutes : Int!
    public var ifsd : String!
    public var cancellation : String!
    public var defectDescription : String!
    public var defectCategory : String!
    public var mddr : String!
    public var defers : String!
    public var deferBy : String!
    public var deferDate : Date!
    public var defertToDate : Date!
    public var mel : String!
    public var melNumber : String!
    public var reportedBy : String!
    public var reportedDate : Date!
    public var resolutionDescription : String!
    public var resolutionCategory : String!
    public var resolvedBy : String!
    public var resolvedDate : Date!
    public var wo : Int!
    public var taskCard : String!
    public var faultConfirm : String!
    public var notes : Int!
    public var createdBy : String!
    public var createdDate : Date!
    public var modifiedBy : String!
    public var modifiedDate : Date!
    public var deferCategory : String!
    public var station : String!
    public var blobNo : Int!
    public var recurrent : Int!
    public var flightPhase : String!
    public var authorization : String!
    public var reliabilityControl : String!
    public var scheduleHours : Int!
    public var scheduleCycles : Int!
    public var scheduleDays : Int!
    public var deferToHours : Int!
    public var deferToMinute : Int!
    public var resolvedLocation : String!
    public var melTitle : String!
    public var ddpg : String!
    public var reportedHours : Int!
    public var reportedMinutes : Int!
    public var deferFromWO : Int!
    public var deferFromTaskCard : String!
    public var internalCapability : String!
    public var deferToNextEc : String!
    public var skill : String!
    public var manHour : Int!
    public var manRequired : Int!
    public var authorizationStatus : String!
    public var authorizationBy : String!
    public var authorizationDate : Date!
    public var capabilityArea : String!
    public var planDefect : String!
    public var sdr : String!
    public var inspectedBy : String!
    public var dispatcherNotified : String!
    public var authorizationStausSecond : Int!
    public var authorizationBySecond : Int!
    public var authorizationDateSecond : Date!
    public var authorizationRequireSecond : String!
    public var authorizationControl : String!
    public var resolutionDefectType : String!
    public var resolutionDefect : String!
    public var resolutionDefectITem : Int!
    public var repeatNumber : Int!
    public var completedNumber : Int!
    public var acPosition : String!
    public var rootCause : String!
    public var requiredInspectionItem : String!
    public var estTurnAroundGroundHrs : Int!
    public var estTurnAroundaGroundMns : Int!
    public var deferHour : Int!
    public var deferMinute : Int!
    public var overrideMddrAuto : String!
    public var crossReferenceType : String!
    public var crossReferenceNumber : Int!
    public var requiredInspectionBy : String!
    public var deferNotes : String!
    public var releaseToServiceBy : String!
    public var releaseToServiceDate : Date!
    public var resolvedHour : Int!
    public var resolvedMinute : Int!
    public var mis : String!
    public var linkingSeq : String!
    public var linkingSeqPrevious : String!
    public var linkingDefect : String!
    public var linkingDefectItem : Int!
    public var linkingDefectType : String!
    public var dispatcherNotifiedResolution : String!
    public var generatedFromEc : String!
    public var authorizationNotes : Int!
    public var asc : String!
    public var initialDueDate : Date!
    public var defectGate : String!
    public var cancelledFlight : String!
    public var delayedFlight : String!
    public var documentNo : Int!
    public var notToAllowConcession : String!
    public var melCalendarDaysFlag : String!
    public var createdFrom : String!
    public var interfaceExternalReference : String!
    public var defectForPn : String!
    public var defectForPNSN : String!
    public var pnIncident : String!
    public var engineFullLoadTakeOff : String!
    public var deferDateOrig : Date!
    public var planDate : Date!
    public var planHour : Int!
    public var planMinutes : Int!
    public var planAcHours : Int!
    public var planAcMinutes : Int!
    public var planAcCycles : Int!
    public var planAcBrakeCycles : Int!
    public var deferFromTcAc : String!
    public var deferFromTcPn : String!
    public var deferFromTcSn : String!
    public var ongoingTroubleShooting : String!
    public var interfaceCreatedDate : Date!
    public var interfaceModifiedDate : Date!
    public var previousInterfaceTransaction : Int!
    public var sabreMessageNumber : Int!
    public var cooRemarks : String!
    public var defectForPnStatus : String!
    public var planningDept : String!
    public var planningSubDept : String!
    public var scheduleHoursRepeat : Int!
    public var scheduleCyclesRepeat : Int!
    public var scheduleDaysRepeat : Int!
    public var deferToDateRepeat : Date!
    public var deferToHourRepeat : Int!
    public var deferToMinuteRepeat : Int!
    public var hourCalendarControl : String!
    public var interfaceEctmTransferBy : String!
    public var interfaceEctmTransferDate : Date!
    public var cador : String!
    public var cadorWarranty : String!
    public var cadorDamage : String!
    public var dayOfDiscovery : String!
    public var reference : String!
    public var cpcpId : Int!
    public var melSub : String!
    public var majorRepair : String!
    public var templateTaskCard : String!
    public var groundTimeRequire : Int!
    public var drtsSourceSystemId : String!
    public var drtsSystemKbString : String!
    public var uniqueId : Int!
    public var inspectorSkill : String!
    public var inspectorManHours : Int!
    public var inspectorManRequire : Int!
    public var interfaceDeferralReference : String!
    public var inUse : String!
    public var currentUser : String!
    public var defectPosition : String!
    public var drtsSystemUrl : String!
    public var mocItemDescription : String!
    public var constraintCode1 : String!
    public var constraintCode2 : String!
    public var paperRequired : String!
    public var mtcContacted : String!
    public var mtcAlert : String!
    public var noOfPrint : Int!
    public var eom : String!
    public var eomRepeat : String!
    public var procedure : String!
    public var melOperationalRetrictions : String!
    public var operationsNote : String!
    public var reliabilityCheck : String!
    public var restrictionsUser : String!
    public var restrictionsDate : Date!
    public var noteUser : String!
    public var noteDate : Date!
    public var deferToNextEcRepeat : String!
    public var notesFromPanel : String!
    public var tempSabre : String!
    public var flightLog : String!
    public var flightLeg : Int!
    public var flightDate : Date!
    public var buyPackRII : String!
    public var etops : String!
    public var seatNumber : Int!
    public var seatLetter : String!
    public var seatSeverity : String!
    public var mocItemDescriptionLinkMel : String!
    public var dueDate : Date!
    public var flightResolved : String!
    public var asr : String!
    public var melAlert : String!
    public var cdccl : String!
    public var criticalTask : String!
    public var cdrmLocationCode : String!
    public var cdrmPartCode : String!
    public var cdrmDescriptionCode : String!
    public var cabinPartId : Int!
    public var iosSync : Date!
    public var cabinPosition : String!
    
    public required init?(map: Map) { }
    
    required init?() { }
    
    public func mapping(map: Map){
        // TODO: Remzi
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy'-'MM'-'dd'T'HH':'mm':'ss'Z'"
        dateFormatter.timeZone = TimeZone.init(secondsFromGMT: 0)
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        
        var tempString : String!
        
        defectType <- map["DEFECT_TYPE"]
        defect <- map["DEFECT"]
        defectItem <- map["DEFECT_ITEM"]
        status <- map["STATUS"]
        ac <- map["AC"]
        chapter <- map["CHAPTER"]
        section <- map["SECTION"]
        paragraph <- map["PARAGRAPH"]
        flight <- map["FLIGHT"]
        fuel <- map["FUEL"]
        delay <- map["DELAY"]
        delayHours <- map["DELAYS_HOURS"]
        delayMinutes <- map["DELAYS_MINUTES"]
        ifsd <- map["I_F_S_D"]
        cancellation <- map["CANCELLATION"]
        defectDescription <- map["DEFECT_DESCRIPTION"]
        defectCategory <- map["DEFECT_CATEGORY"]
        mddr <- map["MDDR"]
        defers <- map["DEFER"]
        deferBy <- map["DEFER_BY"]
        
        tempString <- map["DEFER_DATE"]
        deferDate = dateFormatter.date(from: tempString!)
        
        tempString <- map["DEFER_TO_DATE"]
        defertToDate = dateFormatter.date(from: tempString!)
        
        mel <- map["MEL"]
        melNumber <- map["MEL_NUMBER"]
        reportedBy <- map["REPORTED_BY"]
        
        tempString <- map["REPORTED_DATE"]
        reportedDate = dateFormatter.date(from: tempString!)
        
        resolutionDescription <- map["RESOLUTION_DESCRIPTION"]
        resolutionCategory <- map["RESOLUTION_CATEGORY"]
        resolvedBy <- map["RESOLVED_BY"]
        
        tempString <- map["RESOLVED_DATE"]
        resolvedDate = dateFormatter.date(from: tempString!)
        
        wo <- map["WO"]
        taskCard <- map["TASK_CARD"]
        faultConfirm <- map["FAULT_CONFIRM"]
        notes <- map["NOTES"]
        createdBy <- map["CREATED_BY"]
        
        tempString <- map["CREATED_DATE"]
        createdDate = dateFormatter.date(from: tempString!)
        
        modifiedBy <- map["MODIFIED_BY"]
        
        tempString <- map["MODIFIED_DATE"]
        modifiedDate = dateFormatter.date(from: tempString!)
        
        deferCategory <- map["DEFER_CATEGORY"]
        station <- map["STATION"]
        blobNo <- map["BLOB_NO"]
        recurrent <- map["RECURRENT"]
        flightPhase <- map["FLIGHT_PHASE"]
        authorization <- map["AUTHORIZATION"]
        reliabilityControl <- map["RELIABILITY_CONTROL"]
        scheduleHours <- map["SCHEDULE_HOURS"]
        scheduleCycles <- map["SCHEDULE_CYCLES"]
        scheduleDays <- map["SCHEDULE_DAYS"]
        deferToHours <- map["DEFER_TO_HOUR"]
        deferToMinute <- map["DEFER_TO_MINUTE"]
        resolvedLocation <- map["RESOLVED_LOCATION"]
        melTitle <- map["MEL_TITLE"]
        ddpg <- map["DDPG"]
        reportedHours <- map["REPORTED_HOUR"]
        reportedMinutes <- map["REPORTED_MINUTE"]
        deferFromWO <- map["DEFER_FROM_WO"]
        deferFromTaskCard <- map["DEFER_FROM_TASK_CARD"]
        internalCapability <- map["INTERNAL_CAPABILITY"]
        deferToNextEc <- map["DEFER_TO_NEXT_EC"]
        skill <- map["SKILL"]
        manHour <- map["MAN_HOURS"]
        manRequired <- map["MAN_REQUIRED"]
        authorizationStatus <- map["AUTHORIZATION_STATUS"]
        authorizationBy <- map["AUTHORIZATION_BY"]
        
        tempString <- map["AUTHORIZATION_DATE"]
        authorizationDate = dateFormatter.date(from: tempString!)
        
        capabilityArea <- map["CAPABILITY_AREA"]
        planDefect <- map["PLAN_DEFECT"]
        sdr <- map["SDR"]
        inspectedBy <- map["INSPECTED_BY"]
        dispatcherNotified <- map["DISPATCHER_NOTIFIED"]
        authorizationStausSecond <- map["AUTHORIZATION_STATUS_SENCOND"]
        authorizationBySecond <- map["AUTHORIZATION_BY_SECOND"]
        authorizationDateSecond <- map["AUTOHRIZATION_DATE_SECOND"]
        authorizationRequireSecond <- map["AUTHORIZATION_REQUIRE_SECOND"]
        authorizationControl <- map["AUTHORIZATION_CONTROL"]
        resolutionDefectType <- map["RESOLUTION_DEFECT_TYPE"]
        resolutionDefect <- map["RESOLUTION_DEFECT"]
        resolutionDefectITem <- map["RESOLUTION_DEFECT_ITEM"]
        repeatNumber <- map["REPEAT_NUMBER"]
        completedNumber <- map["COMPLETED_NUMBER"]
        acPosition <- map["AC_POSITION"]
        rootCause <- map["ROOT_CAUSE"]
        requiredInspectionItem <- map["REQUIRED_INSPECTION_ITEM"]
        estTurnAroundGroundHrs <- map["EST_TURN_AROUND_GROUND_HRS"]
        estTurnAroundaGroundMns <- map["EST_TURN_AROUND_GROUND_MNS"]
        deferHour <- map["DEFER_HOUR"]
        deferMinute <- map["DEFER_MINUTE"]
        overrideMddrAuto <- map["OVERRIDE_MDDR_AUTO"]
        crossReferenceType <- map["CROSS_REFERENCE_TYPE"]
        crossReferenceNumber <- map["CROSS_REFERENCE_NUMBER"]
        requiredInspectionBy <- map["REQUIRED_INSPECTION_BY"]
        deferNotes <- map["DEFER_NOTES"]
        releaseToServiceBy <- map["RELEASE_TO_SERVICE_BY"]
        
        tempString <- map["RELEASE_TO_SERVICE_DATE"]
        releaseToServiceDate = dateFormatter.date(from: tempString!)
        
        resolvedHour <- map["RESOLVED_HOUR"]
        resolvedMinute <- map["RESOLVED_MINUTE"]
        mis <- map["MIS"]
        linkingSeq <- map["LINKING_SEQ"]
        linkingSeqPrevious <- map["LINKING_SEQ_PREVIOUS"]
        linkingDefect <- map["LINKING_DEFECT"]
        linkingDefectItem <- map["LINKING_DEFECT_ITEM"]
        linkingDefectType <- map["LINKING_DEFECT_TYPE"]
        dispatcherNotifiedResolution <- map["DISPATCHER_NOTIFIED_RESOLUTION"]
        generatedFromEc <- map["GENERATED_FROM_EC"]
        authorizationNotes <- map["AUTHORIZATION_NOTES"]
        asc <- map["ASC"]
        
        tempString <- map["INITIAL_DUE_DATE"]
        initialDueDate = dateFormatter.date(from: tempString!)
        
        defectGate <- map["DEFECT_GATE"]
        cancelledFlight <- map["CANCELED_FLIGHT"]
        delayedFlight <- map["DELAYED_FLIGHT"]
        documentNo <- map["DOCUMENT_NO"]
        notToAllowConcession <- map["NOT_DO_ALLOW_CONCESSION"]
        melCalendarDaysFlag <- map["MEL_CALENDAR_DAYS_FLAG"]
        createdFrom <- map["CREATED_FROM"]
        interfaceExternalReference <- map["INTERFACE_EXTERNAL_REFERENCE"]
        defectForPn <- map["DEFECT_FOR_PN"]
        defectForPNSN <- map["DEFECT_FOR_PN_SN"]
        pnIncident <- map["PN_INCIDENT"]
        engineFullLoadTakeOff <- map["ENGINE_FULL_LOAD_TAKEOFF"]
        deferDateOrig <- map["DEFER_DATE_ORIG"]
        planDate <- map["PLAN_DATE"]
        planHour <- map["PLAN_HOUR"]
        planMinutes <- map["PLAN_MINUTE"]
        planAcHours <- map["PLAN_AC_HOURS"]
        planAcMinutes <- map["PLAN_AC_MINUTES"]
        planAcCycles <- map["PLAN_AC_CYCLES"]
        planAcBrakeCycles <- map["PLAN_AC_BRAKE_CYCLES"]
        deferFromTcAc <- map["DEFER_FROM_TC_AC"]
        deferFromTcPn <- map["DEFER_FROM_TC_PN"]
        deferFromTcSn <- map["DEFER_FROM_TC_SN"]
        ongoingTroubleShooting <- map["ONGOING_TROUBLE_SHOOTING"]
        
        tempString <- map["INTERFACE_CREATED_DATE"]
        interfaceCreatedDate = dateFormatter.date(from: tempString!)
        
        tempString <- map["INTERFACE_MODIFIED_DATE"]
        interfaceModifiedDate = dateFormatter.date(from: tempString!)
        
        previousInterfaceTransaction <- map["PREVIOUS_INTERFACE_TRANSACTION"]
        sabreMessageNumber <- map["SABRE_MESSAGE_NUMBER"]
        cooRemarks <- map["COO_REMARKS"]
        defectForPnStatus <- map["DEFECT_FOR_PN_STATUS"]
        planningDept <- map["PLANNING_DEPT"]
        planningSubDept <- map["PLANNING_SUB_DEPT"]
        scheduleHoursRepeat <- map["SCHEDULE_HOURS_REPEAT"]
        scheduleCyclesRepeat <- map["SCHEDULE_CYCLES_REPEAT"]
        scheduleDaysRepeat <- map["SCHEDULE_DAYS_REPEAT"]
        deferToDateRepeat <- map["DEFER_TO_DATE_REPEAT"]
        deferToHourRepeat <- map["DEFER_TO_HOUR_REPEAT"]
        deferToMinuteRepeat <- map["DEFER_TO_MINUTE_REPEAT"]
        hourCalendarControl <- map["HOUR_CALENDAR_CONTROL"]
        interfaceEctmTransferBy <- map["INTERFACE_ECTM_TRANSFER_BY"]
        
        tempString <- map["INTERFACE_ECTM_TRANSFER_DATE"]
        interfaceEctmTransferDate = dateFormatter.date(from: tempString!)
        
        cador <- map["CADOR"]
        cadorWarranty <- map["CADOR_WARRANTY"]
        cadorDamage <- map["CADOR_DAMAGE"]
        dayOfDiscovery <- map["DAY_OF_DISCOVERY"]
        reference <- map["REFERENCE"]
        cpcpId <- map["CPCP_ID"]
        melSub <- map["MEL_SUB"]
        majorRepair <- map["MAJOR_REPAIR"]
        templateTaskCard <- map["TEMPLATE_TASK_CARD"]
        groundTimeRequire <- map["GROUND_TIME_REQUIRE"]
        drtsSourceSystemId <- map["DRTS_SOURCE_SYSTEM_ID"]
        drtsSystemKbString <- map["DRTS_SYSTEM_KB_STRING"]
        uniqueId <- map["UNIQUE_ID"]
        inspectorSkill <- map["INSPECTOR_SKILL"]
        inspectorManHours <- map["INSPECTOR_MAN_HOURS"]
        inspectorManRequire <- map["INSPECTOR_MAN_REQUIRE"]
        interfaceDeferralReference <- map["INTERFACE_DEFERRAL_REFERENCE"]
        inUse <- map["IN_USE"]
        currentUser <- map["CURRENT_USER"]
        defectPosition <- map["DEFECT_POSITION"]
        drtsSystemUrl <- map["DRTS_SYSTEM_URL"]
        mocItemDescription <- map["MOC_ITEM_DESCRIPTION"]
        constraintCode1 <- map["CONSTRAINT_CODE_1"]
        constraintCode2 <- map["CONSTRAINT_CODE_2"]
        paperRequired <- map["PAPER_REQUIRED"]
        mtcContacted <- map["MTC_CONTACTED"]
        mtcAlert <- map["MTC_ALERT"]
        noOfPrint <- map["NO_OF_PRINT"]
        eom <- map["EOM"]
        eomRepeat <- map["EOM_REPEAT"]
        procedure <- map["PROCEDURE"]
        melOperationalRetrictions <- map["MEL_OPERATIONAL_RESTRICTIONS"]
        operationsNote <- map["OPERATONS_NOTE"]
        reliabilityCheck <- map["RELIABILITY_CHECK"]
        restrictionsUser <- map["RESTRICTIONS_USER"]
        
        tempString <- map["RESTRICTIONS_DATE"]
        restrictionsDate = dateFormatter.date(from: tempString!)
        
        noteUser <- map["NOTE_USER"]
        
        tempString <- map["NOTE_DATE"]
        noteDate = dateFormatter.date(from: tempString!)
        
        deferToNextEcRepeat <- map["DEFER_TO_NEXT_EC_REPEAT"]
        notesFromPanel <- map["NOTES_FROM_PANEL"]
        tempSabre <- map["TEMP_SABRE"]
        flightLog <- map["FLIGHT_LOG"]
        flightLeg <- map["FLIGHT_LEG"]
        flightDate <- map["FLIGHT_DATE"]
        buyPackRII <- map["BUY_PACK_RII"]
        etops <- map["ETOPS"]
        seatNumber <- map["SEAT_NUMBER"]
        seatLetter <- map["SEAT_LETTER"]
        seatSeverity <- map["SEAT_SEVERITY"]
        mocItemDescriptionLinkMel <- map["MOC_ITEM_DESCRIPTION_LINK_MEL"]
        
        tempString <- map["DUE_DATE"]
        dueDate = dateFormatter.date(from: tempString!)
        
        flightResolved <- map["FLIGHT_RESOLVED"]
        asr <- map["ASR"]
        melAlert <- map["MEL_ALERT"]
        cdccl <- map["CDCCL"]
        criticalTask <- map["CRITICAL_TASK"]
        cdrmLocationCode <- map["CDRM_LOCATION_CODE"]
        cdrmPartCode <- map["CDRM_PART_CODE"]
        cdrmDescriptionCode <- map["CDRM_DESCRIPTION_CODE"]
        cabinPartId <- map["CABIN_PART_ID"]
        iosSync <- map["IOS_SYNC"]
        cabinPosition <- map["CABIN_POSITION"]
    }
}

// MARK: Added by Remzi
extension DefectsAndMels {
    enum CodingKeys: String, CodingKey {
        case defectType = "DEFECT_TYPE"
        case defect = "DEFECT"
        case defectItem = "DEFECT_ITEM"
        case status = "STATUS"
        case ac = "AC"
        case chapter = "CHAPTER"
        case section = "SECTION"
        case paragraph = "PARAGRAPH"
        case flight = "FLIGHT"
        case fuel = "FUEL"
        case delay = "DELAY"
        case delayHours = "DELAYS_HOURS"
        case delayMinutes = "DELAYS_MINUTES"
        case ifsd = "I_F_S_D"
        case cancellation = "CANCELLATION"
        case defectDescription = "DEFECT_DESCRIPTION"
        case defectCategory = "DEFECT_CATEGORY"
        case mddr = "MDDR"
        case defers = "DEFER"
        case deferBy = "DEFER_BY"
        case deferDate = "DEFER_DATE"
        case defertToDate = "DEFER_TO_DATE"
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
        case blobNo = "BLOB_NO"
        case recurrent = "RECURRENT"
        case flightPhase = "FLIGHT_PHASE"
        case authorization = "AUTHORIZATION"
        case reliabilityControl = "RELIABILITY_CONTROL"
        case scheduleHours = "SCHEDULE_HOURS"
        case scheduleCycles = "SCHEDULE_CYCLES"
        case scheduleDays = "SCHEDULE_DAYS"
        case deferToHours = "DEFER_TO_HOUR"
        case deferToMinute = "DEFER_TO_MINUTE"
        case resolvedLocation = "RESOLVED_LOCATION"
        case melTitle = "MEL_TITLE"
        case ddpg = "DDPG"
        case reportedHours = "REPORTED_HOUR"
        case reportedMinutes = "REPORTED_MINUTE"
        case deferFromWO = "DEFER_FROM_WO"
        case deferFromTaskCard = "DEFER_FROM_TASK_CARD"
        case internalCapability = "INTERNAL_CAPABILITY"
        case deferToNextEc = "DEFER_TO_NEXT_EC"
        case skill = "SKILL"
        case manHour = "MAN_HOURS"
        case manRequired = "MAN_REQUIRED"
        case authorizationStatus = "AUTHORIZATION_STATUS"
        case authorizationBy = "AUTHORIZATION_BY"
        case authorizationDate = "AUTHORIZATION_DATE"
        case capabilityArea = "CAPABILITY_AREA"
        case planDefect = "PLAN_DEFECT"
        case sdr = "SDR"
        case inspectedBy = "INSPECTED_BY"
        case dispatcherNotified = "DISPATCHER_NOTIFIED"
        case authorizationStausSecond = "AUTHORIZATION_STATUS_SENCOND"
        case authorizationBySecond = "AUTHORIZATION_BY_SECOND"
        case authorizationDateSecond = "AUTOHRIZATION_DATE_SECOND"
        case authorizationRequireSecond = "AUTHORIZATION_REQUIRE_SECOND"
        case authorizationControl = "AUTHORIZATION_CONTROL"
        case resolutionDefectType = "RESOLUTION_DEFECT_TYPE"
        case resolutionDefect = "RESOLUTION_DEFECT"
        case resolutionDefectITem = "RESOLUTION_DEFECT_ITEM"
        case repeatNumber = "REPEAT_NUMBER"
        case completedNumber = "COMPLETED_NUMBER"
        case acPosition = "AC_POSITION"
        case rootCause = "ROOT_CAUSE"
        case requiredInspectionItem = "REQUIRED_INSPECTION_ITEM"
        case estTurnAroundGroundHrs = "EST_TURN_AROUND_GROUND_HRS"
        case estTurnAroundaGroundMns = "EST_TURN_AROUND_GROUND_MNS"
        case deferHour = "DEFER_HOUR"
        case deferMinute = "DEFER_MINUTE"
        case overrideMddrAuto = "OVERRIDE_MDDR_AUTO"
        case crossReferenceType = "CROSS_REFERENCE_TYPE"
        case crossReferenceNumber = "CROSS_REFERENCE_NUMBER"
        case requiredInspectionBy = "REQUIRED_INSPECTION_BY"
        case deferNotes = "DEFER_NOTES"
        case releaseToServiceBy = "RELEASE_TO_SERVICE_BY"
        case releaseToServiceDate = "RELEASE_TO_SERVICE_DATE"
        case resolvedHour = "RESOLVED_HOUR"
        case resolvedMinute = "RESOLVED_MINUTE"
        case mis = "MIS"
        case linkingSeq = "LINKING_SEQ"
        case linkingSeqPrevious = "LINKING_SEQ_PREVIOUS"
        case linkingDefect = "LINKING_DEFECT"
        case linkingDefectItem = "LINKING_DEFECT_ITEM"
        case linkingDefectType = "LINKING_DEFECT_TYPE"
        case dispatcherNotifiedResolution = "DISPATCHER_NOTIFIED_RESOLUTION"
        case generatedFromEc = "GENERATED_FROM_EC"
        case authorizationNotes = "AUTHORIZATION_NOTES"
        case asc = "ASC"
        case initialDueDate = "INITIAL_DUE_DATE"
        case defectGate = "DEFECT_GATE"
        case cancelledFlight = "CANCELED_FLIGHT"
        case delayedFlight = "DELAYED_FLIGHT"
        case documentNo = "DOCUMENT_NO"
        case notToAllowConcession = "NOT_DO_ALLOW_CONCESSION"
        case melCalendarDaysFlag = "MEL_CALENDAR_DAYS_FLAG"
        case createdFrom = "CREATED_FROM"
        case interfaceExternalReference = "INTERFACE_EXTERNAL_REFERENCE"
        case defectForPn = "DEFECT_FOR_PN"
        case defectForPNSN = "DEFECT_FOR_PN_SN"
        case pnIncident = "PN_INCIDENT"
        case engineFullLoadTakeOff = "ENGINE_FULL_LOAD_TAKEOFF"
        case deferDateOrig = "DEFER_DATE_ORIG"
        case planDate = "PLAN_DATE"
        case planHour = "PLAN_HOUR"
        case planMinutes = "PLAN_MINUTE"
        case planAcHours = "PLAN_AC_HOURS"
        case planAcMinutes = "PLAN_AC_MINUTES"
        case planAcCycles = "PLAN_AC_CYCLES"
        case planAcBrakeCycles = "PLAN_AC_BRAKE_CYCLES"
        case deferFromTcAc = "DEFER_FROM_TC_AC"
        case deferFromTcPn = "DEFER_FROM_TC_PN"
        case deferFromTcSn = "DEFER_FROM_TC_SN"
        case ongoingTroubleShooting = "ONGOING_TROUBLE_SHOOTING"
        case interfaceCreatedDate = "INTERFACE_CREATED_DATE"
        case interfaceModifiedDate = "INTERFACE_MODIFIED_DATE"
        case previousInterfaceTransaction = "PREVIOUS_INTERFACE_TRANSACTION"
        case sabreMessageNumber = "SABRE_MESSAGE_NUMBER"
        case cooRemarks = "COO_REMARKS"
        case defectForPnStatus = "DEFECT_FOR_PN_STATUS"
        case planningDept = "PLANNING_DEPT"
        case planningSubDept = "PLANNING_SUB_DEPT"
        case scheduleHoursRepeat = "SCHEDULE_HOURS_REPEAT"
        case scheduleCyclesRepeat = "SCHEDULE_CYCLES_REPEAT"
        case scheduleDaysRepeat = "SCHEDULE_DAYS_REPEAT"
        case deferToDateRepeat = "DEFER_TO_DATE_REPEAT"
        case deferToHourRepeat = "DEFER_TO_HOUR_REPEAT"
        case deferToMinuteRepeat = "DEFER_TO_MINUTE_REPEAT"
        case hourCalendarControl = "HOUR_CALENDAR_CONTROL"
        case interfaceEctmTransferBy = "INTERFACE_ECTM_TRANSFER_BY"
        case interfaceEctmTransferDate = "INTERFACE_ECTM_TRANSFER_DATE"
        case cador = "CADOR"
        case cadorWarranty = "CADOR_WARRANTY"
        case cadorDamage = "CADOR_DAMAGE"
        case dayOfDiscovery = "DAY_OF_DISCOVERY"
        case reference = "REFERENCE"
        case cpcpId = "CPCP_ID"
        case melSub = "MEL_SUB"
        case majorRepair = "MAJOR_REPAIR"
        case templateTaskCard = "TEMPLATE_TASK_CARD"
        case groundTimeRequire = "GROUND_TIME_REQUIRE"
        case drtsSourceSystemId = "DRTS_SOURCE_SYSTEM_ID"
        case drtsSystemKbString = "DRTS_SYSTEM_KB_STRING"
        case uniqueId = "UNIQUE_ID"
        case inspectorSkill = "INSPECTOR_SKILL"
        case inspectorManHours = "INSPECTOR_MAN_HOURS"
        case inspectorManRequire = "INSPECTOR_MAN_REQUIRE"
        case interfaceDeferralReference = "INTERFACE_DEFERRAL_REFERENCE"
        case inUse = "IN_USE"
        case currentUser = "CURRENT_USER"
        case defectPosition = "DEFECT_POSITION"
        case drtsSystemUrl = "DRTS_SYSTEM_URL"
        case mocItemDescription = "MOC_ITEM_DESCRIPTION"
        case constraintCode1 = "CONSTRAINT_CODE_1"
        case constraintCode2 = "CONSTRAINT_CODE_2"
        case paperRequired = "PAPER_REQUIRED"
        case mtcContacted = "MTC_CONTACTED"
        case mtcAlert = "MTC_ALERT"
        case noOfPrint = "NO_OF_PRINT"
        case eom = "EOM"
        case eomRepeat = "EOM_REPEAT"
        case procedure = "PROCEDURE"
        case melOperationalRetrictions = "MEL_OPERATIONAL_RESTRICTIONS"
        case operationsNote = "OPERATONS_NOTE"
        case reliabilityCheck = "RELIABILITY_CHECK"
        case restrictionsUser = "RESTRICTIONS_USER"
        case restrictionsDate = "RESTRICTIONS_DATE"
        case noteUser = "NOTE_USER"
        case noteDate = "NOTE_DATE"
        case deferToNextEcRepeat = "DEFER_TO_NEXT_EC_REPEAT"
        case notesFromPanel = "NOTES_FROM_PANEL"
        case tempSabre = "TEMP_SABRE"
        case flightLog = "FLIGHT_LOG"
        case flightLeg = "FLIGHT_LEG"
        case flightDate = "FLIGHT_DATE"
        case buyPackRII = "BUY_PACK_RII"
        case etops = "ETOPS"
        case seatNumber = "SEAT_NUMBER"
        case seatLetter = "SEAT_LETTER"
        case seatSeverity = "SEAT_SEVERITY"
        case mocItemDescriptionLinkMel = "MOC_ITEM_DESCRIPTION_LINK_MEL"
        case dueDate = "DUE_DATE"
        case flightResolved = "FLIGHT_RESOLVED"
        case asr = "ASR"
        case melAlert = "MEL_ALERT"
        case cdccl = "CDCCL"
        case criticalTask = "CRITICAL_TASK"
        case cdrmLocationCode = "CDRM_LOCATION_CODE"
        case cdrmPartCode = "CDRM_PART_CODE"
        case cdrmDescriptionCode = "CDRM_DESCRIPTION_CODE"
        case cabinPartId = "CABIN_PART_ID"
        case iosSync = "IOS_SYNC"
        case cabinPosition = "CABIN_POSITION"
    }
}
*/
