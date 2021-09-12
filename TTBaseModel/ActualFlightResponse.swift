//
//  ActualFlightResponse.swift
//  TTBaseModel
//
//  Created by Remzi YILDIRIM on 13.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class ActualFlightResponse: ResponseModelBase {
    // MARK: Properties
    public var lastActualFlight: [ActualFlight]?
    
    public required init() {
        super.init()
    }
    
    public required init(map: Map) {
        super.init(map: map)
    }
    
    // MARK: Mapping
    public override func mapping(map: Map) {
        self.lastActualFlight <- map[SerializationKeys.lastActualFlight]
    }
}

extension ActualFlightResponse {
    private struct SerializationKeys {
        static let lastActualFlight = "lastActualFlights"
    }
}

public class ActualFlight: Mappable {
    public var flightLog: String!
    public var flightLeg : Int!
    public var origin : String!
    public var destination : String!
    public var date : Date!
    public var hour : Int!
    public var minute : Int!
    
    public required init?(map: Map) { }
    
    required init?() { }
    
    public func mapping(map: Map){
        // TODO: Remzi
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/M/yyyy hh:mm:ss a"
        dateFormatter.timeZone = TimeZone.init(secondsFromGMT: 0)
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        
        flightLog <- map[SerializationKeys.flightLog]
        flightLeg <- map[SerializationKeys.flightLeg]
        origin <- map[SerializationKeys.origin]
        destination <- map[SerializationKeys.destination]
        
        var tempString : String!
        tempString <- map[SerializationKeys.date]
        date = dateFormatter.date(from: tempString)

        hour <- map[SerializationKeys.hour]
        minute <- map[SerializationKeys.minute]
    }
}

extension ActualFlight {
    private struct SerializationKeys {
        static let flightLog = "flighT_LOG"
        static let flightLeg = "flighT_LEG"
        static let origin = "origin"
        static let destination = "destination"
        static let date = "flighT_DATE"
        static let hour = "oN_HOUR"
        static let minute = "oN_MINUTE"
    }
}
