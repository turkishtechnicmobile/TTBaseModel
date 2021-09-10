//
//  FlightResponse.swift
//  NMBaseModel
//
//  Created by Remzi YILDIRIM on 12.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

//import Foundation
//import ObjectMapper
//
//public class FlightResponse: ResponseModelBase {
//    
//    // MARK: Properties
//    public var arrivals: [FlightArrivalOrDeparture]?
//    public var departures: [FlightArrivalOrDeparture]?
//    
//    public required init() {
//        super.init()
//    }
//    
//    public required init(map: Map) {
//        super.init(map: map)
//    }
//    
//    // MARK: Mapping
//    public override func mapping(map: Map){
//        super.mapping(map: map)
//        self.arrivals <- map[SerializationKeys.flightArrivals]
//        self.departures <- map[SerializationKeys.flightDepartures]
//    }
//}

//import Foundation
//import ObjectMapper
//
//public class FlightResponse: ResponseModelBase {
//
//    // MARK: Properties
//    public var arrivals: [FlightArrivalOrDeparture]?
//    public var departures: [FlightArrivalOrDeparture]?
//
//    public required init() {
//        super.init()
//    }
//
//    public required init(map: Map) {
//        super.init(map: map)
//    }
//
//    // MARK: Mapping
//    public override func mapping(map: Map){
//        super.mapping(map: map)
//        self.arrivals <- map[SerializationKeys.flightArrivals]
//        self.departures <- map[SerializationKeys.flightDepartures]
//    }
//}
//
//extension FlightResponse {
//    private struct SerializationKeys {
//        static let flightDepartures = "flightDepartures"
//        static let flightArrivals = "flightArrivals"
//    }
//}
