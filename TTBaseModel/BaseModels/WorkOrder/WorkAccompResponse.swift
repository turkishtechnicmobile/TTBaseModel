//
//  WorkAccompResponse.swift
//  NMBaseModel
//
//  Created by Remzi YILDIRIM on 13.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class WorkAccompResponse: Mappable {
    // MARK: Properties
    public var waList: [WaItem]?
    
    public required init() {
    }
    
    public required init(map: Map) {
    }
    
    // MARK: Mapping
    public func mapping(map: Map){
        // super.mapping(map: map)
        self.waList <- map[SerializationKeys.waList]
    }
}

extension WorkAccompResponse {
    private struct SerializationKeys {
        static let waList = "WoTaskCardAccomplished"
    }
}

public class WaItem : Mappable { //work accomplished Item
    public var id :Int!
    public var desc :String!
    public var ac :String!
    public var modifiedBy :String!
    public var modifiedDate :String!
    public var createdBy :String!
    public var createdDate :String!
    
    public required init?(map: Map) {
    }
    
    public required init?() {
    }
    
    public func mapping(map: Map){
        
        // TODO: Remzi
//        let dateFormatter = ConstantFormatted.dateFormattedMapping()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy'-'MM'-'dd'T'HH':'mm':'ss'Z'"
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 60*60*3) // GTM +3:00
        dateFormatter.locale = Locale(identifier: "tr_TR")
        
        let dateFormatterPrint = DateFormatter()
        dateFormatterPrint.dateFormat = "dd.MM.yyyy HH:mm"
        
        var tempDateString : String!
        var tempDate : Date!
        
        id <- map[SerializationKeys.id]
        desc <- map[SerializationKeys.desc]
        ac <- map[SerializationKeys.ac]
        
        modifiedBy <- map[SerializationKeys.modifiedBy]
        createdBy <- map[SerializationKeys.createdBy]
        
        tempDateString <- map[SerializationKeys.createdDate]
        if tempDateString != nil {
            tempDate = dateFormatter.date(from: tempDateString)
            createdDate = dateFormatterPrint.string(from: tempDate)
        }
       
        tempDateString <- map[SerializationKeys.modifiedDate]
        if tempDateString != nil {
            tempDate = dateFormatter.date(from: tempDateString)
            modifiedDate = dateFormatterPrint.string(from: tempDate)
        }
    }
    
}

//public let timeZone = TimeZone(secondsFromGMT: 0) // GTM +0:00
//public let timeZoneTR = TimeZone(secondsFromGMT: 60*60*3) // GTM +3:00
//
//public var currentDate: Date {
//    return Date()
//}
//adadadadad
//private let locale = Locale(identifier: "en_US_POSIX")
//private let localeTR = Locale(identifier: "tr_TR")
//
//public lazy var calender: Calendar = {
//    var calender = Calendar.current
//    calender.timeZone = timeZone ?? calender.timeZone
//    calender.locale = locale
//    return calender
//}()
//
//public lazy var apiDateFormatter: DateFormatter = {
//    let dateFormatter = DateFormatter()
//    dateFormatter.dateFormat = FormatOption.api.rawValue
//    dateFormatter.timeZone = timeZone
//    dateFormatter.locale = locale
//    return dateFormatter
//}()

extension WaItem {
    private struct SerializationKeys {
        static let id = "WORK_ACCOMPLISHED_LINE" //3
        static let desc = "WORK_ACCOMPLISHED" //"adadadadadada"
        static let ac = "AC" //"TC-JGO"
        static let modifiedBy = "MODIFIED_BY"
        static let modifiedDate = "MODIFIED_DATE"
        static let createdBy = "CREATED_BY" // "919826",
        static let createdDate = "CREATED_DATE" // "2019-10-08T18:17:41",
    }
}
