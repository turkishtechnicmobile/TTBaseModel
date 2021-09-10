//
//  DTSTaskCardStampRequestModel.swift
//  NMBaseModel
//
//  Created by Burhan on 8.09.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public enum StampStatus: Int, Encodable {
    case UNDO = -1
    case NONE = 0
    case STAMP = 1
    case DEFER = 2
    case REPETITIVE = 3
    case CUSTOMERAWAITING = 4
    case CUSTOMERAPPROVED = 5
    case CUSTOMERREJECTED = 6
}

extension StampStatus: CustomStringConvertible {
    public var description: String {
        switch self {
        case .NONE:
            return "NONE"
        case .UNDO:
            return "NONE"
        case .STAMP:
            return "STAMP"
        case .DEFER:
            return "DEFER"
        case .REPETITIVE:
            return "REPETITIVE"
        case .CUSTOMERAWAITING:
            return "CANCEL"
        case .CUSTOMERAPPROVED:
            return "CANCEL APPROVED"
        case .CUSTOMERREJECTED:
            return "CANCEL REJECTED"
        }
    }
}

extension StampStatus {
    public var color: UIColor {
        switch self {
//        case .NONE:
//            return #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        case .STAMP:
            return #colorLiteral(red: 0.1998198032, green: 0.7310538888, blue: 0.390648216, alpha: 1)
        case .DEFER:
            return #colorLiteral(red: 0.9677321315, green: 0.6545877457, blue: 0, alpha: 1)
        case .REPETITIVE:
            return #colorLiteral(red: 0.6316671371, green: 0.548324883, blue: 0.9445182681, alpha: 1)
        case .CUSTOMERAWAITING:
            return #colorLiteral(red: 0.9994333386, green: 0.4142571092, blue: 0.5010313392, alpha: 1)
        case .CUSTOMERAPPROVED:
            return #colorLiteral(red: 0.1998198032, green: 0.7310538888, blue: 0.390648216, alpha: 1)
        case .CUSTOMERREJECTED:
            return #colorLiteral(red: 0.9994333386, green: 0.4142571092, blue: 0.5010313392, alpha: 1)
        default:
            return #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
}

//0 - NONE
//1 - STAMP
//2 - DEFER
//3 - REPETITIVE
//4 - CUSTOMERAWAITING (cancel)
//5 - CUSTOMERAPPROVED (cancel approved)
//6 - CUSTOMERREJECTED (cancel reject)

public class DTSTaskCardStampListRequestModel: RequestModelBase {
    public var stamps: [DTSTaskCardStampRequestModel]?
    public var smsCode: String?
    
    public convenience init(taskCardListItems:[DTSTaskCardListItemModelProtocol], stampStatus: StampStatus, smsCode:String) {
        self.init()
        self.stamps = [DTSTaskCardStampRequestModel]()
        for taskCardListItem in taskCardListItems {
            let stampRequest = DTSTaskCardStampRequestModel.init(taskCardListItemModel: taskCardListItem, stampStatus: stampStatus)
            self.stamps?.append(stampRequest)
        }
        self.smsCode = smsCode
    }
    
    // MARK: Mapping
    open override func dictionaryRepresentation() -> [String: Any] {
        var dictionary = super.dictionaryRepresentation()
        
        if let value = stamps {
            var dictArray = [[String:Any]]()
            for item in value {
                dictArray.append(item.dictionaryRepresentation())
            }
            dictionary[SerializationKeys.stamps] = dictArray
        }
        if let value = smsCode { dictionary[SerializationKeys.smsCode] = value }
        return dictionary
    }
}

extension DTSTaskCardStampListRequestModel {
    private struct SerializationKeys {
        static let stamps = "stamps"
        static let smsCode = "smsCode"
    }
}


public class DTSTaskCardStampRequestModel: RequestModelBase, DTSTaskCardListItemModelProtocol {
    public var wo: Int? {
        return self.taskCardListItemModel?.wo
    }
    
    public var taskCard: String? {
        return self.taskCardListItemModel?.taskCard
    }
    
    public var taskCardDescription: String? {
        return self.taskCardListItemModel?.taskCardDescription
    }
    
    public var pn: String? {
        return self.taskCardListItemModel?.pn
    }
    
    public var sn: String? {
        get {
            return self.taskCardListItemModel?.sn
        }
    }
    
    public var status: String? {
        return self.taskCardListItemModel?.status
    }
    
    public var createdBy: String? {
        return self.taskCardListItemModel?.createdBy
    }
    
    public var modifiedBy: String? {
        return self.taskCardListItemModel?.modifiedBy
    }
    
    public var isNonRoutine: Bool {
        return self.taskCardListItemModel?.isNonRoutine ?? false
    }
    
    
    public var stampStatus: StampStatus = .NONE
    public var taskCardListItemModel: DTSTaskCardListItemModelProtocol?
    
    public required init() {
        super.init()
    }

    public required init(map: Map) throws {
        try super.init(map: map)
    }
    
    public convenience init(taskCardListItemModel:DTSTaskCardListItemModelProtocol, stampStatus: StampStatus) {
        self.init()
        self.stampStatus = stampStatus
        self.taskCardListItemModel = taskCardListItemModel
    }
    
// MARK: Mapping
    open override func dictionaryRepresentation() -> [String: Any] {
        var dictionary = super.dictionaryRepresentation()
        
        if let value = wo { dictionary[SerializationKeys.wo] = value }
        if let value = taskCard { dictionary[SerializationKeys.taskCard] = value }
        if let value = taskCardDescription { dictionary[SerializationKeys.taskCardDescription] = value }
        if let value = pn { dictionary[SerializationKeys.pn] = value }
        if let value = sn { dictionary[SerializationKeys.sn] = value }
        if let value = status { dictionary[SerializationKeys.status] = value }
        if let value = createdBy { dictionary[SerializationKeys.createdBy] = value }
        if let value = modifiedBy { dictionary[SerializationKeys.modifiedBy] = value }

        dictionary[SerializationKeys.stampStatus] = stampStatus.rawValue
        dictionary[SerializationKeys.isNonRoutine] = isNonRoutine
            //? "Y" : "N"  // service wait null or value
        return dictionary
    }
}

extension DTSTaskCardStampRequestModel {
    private struct SerializationKeys {
        static let wo = "wo"
        static let taskCard = "taskCard"
        static let taskCardDescription = "taskCardDescription"
        static let pn = "pn"
        static let sn = "sn"
        static let status = "status"
        static let createdBy = "createdBy"
        static let modifiedBy = "modifiedBy"
        static let isNonRoutine = "isNonRoutine"
        static let stampStatus = "stampStatus"
    }
}

