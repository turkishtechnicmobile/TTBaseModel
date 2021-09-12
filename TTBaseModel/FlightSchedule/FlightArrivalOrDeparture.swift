//
//  FlightArrivalOrDeparture.swift
//  NMBaseModel
//
//  Created by Remzi YILDIRIM on 13.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
////
//
//import Foundation
//import ObjectMapper
//
//public class FlightArrivalOrDeparture : Mappable {
//    public var ac : String!
//    public var acType : String!
//    public var acSeries : String!
//    public var flight : String!
//    public var leg : Int!
//    public var origin : String!
//    public var destination : String!
//    public var scheduleDate : Date!
//    public var arrivalDate : Date!
//    public var gate : String!
//    public var position : String!
//    
//    public required init?(map: Map) { }
//    
//    required init?() { }
//    
//    public func mapping(map: Map) {
//        
//        // TODO: Remzi
////        let dateFormatter = ConstantFormatted.dateFormattedMapping()
//        let dateFormatter = DateFormatter()
//        dateFormatter.dateFormat = "yyyy'-'MM'-'dd'T'HH':'mm':'ss'Z'"
//        dateFormatter.timeZone = TimeZone(secondsFromGMT: 60*60*3) // GTM +3:00
//        dateFormatter.locale = Locale(identifier: "tr_TR")
//        
//        var tempDateString : String!
//        
//        ac <- map[SerializationKeys.ac]
//        acType <- map[SerializationKeys.acType]
//        acSeries <- map[SerializationKeys.acSeries]
//        flight <- map[SerializationKeys.flight]
//        leg <- map[SerializationKeys.leg]
//        origin <- map[SerializationKeys.origin]
//        destination <- map[SerializationKeys.destination]
//        
//        tempDateString <- map[SerializationKeys.scheduleDate]
//        if tempDateString != nil {
//            scheduleDate = dateFormatter.date(from: tempDateString)
//        }
//        
//        tempDateString <- map[SerializationKeys.arrivalDate]
//        if tempDateString != nil {
//            arrivalDate = dateFormatter.date(from: tempDateString)
//        }
//        
//        gate <- map[SerializationKeys.depGate]
//        if gate == nil {
//            gate <- map[SerializationKeys.arrGate]
//        }
//        position <- map[SerializationKeys.depPosition]
//        if position == nil {
//            position <- map[SerializationKeys.arrPosition]
//        }
//    }
//}
//
//extension FlightArrivalOrDeparture {
//    private struct SerializationKeys {
//        static let ac = "ac"
//        static let acType = "aC_TYPE"
//        static let acSeries = "aC_SERIES"
//        static let flight = "flight"
//        static let leg = "leg"
//        static let origin = "origin"
//        static let destination = "destination"
//        static let scheduleDate = "schedulE_DATE"
//        static let arrivalDate = "arrivaL_DATE"
//        
//        static let depGate = "deP_GATE" // departure için
//        static let depPosition = "deP_POSITION" // departure için
//        
//        static let arrGate = "arR_GATE" // arrival için
//        static let arrPosition = "arR_POSITION" // arrival için
//    }
//}
