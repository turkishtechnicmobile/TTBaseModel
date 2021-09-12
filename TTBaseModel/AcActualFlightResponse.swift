//
//  AcActualFlightResponse.swift
//  TTBaseModel
//
//  Created by Remzi YILDIRIM on 13.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation

public class AcActualFlightResponse: Model {
    public let flights: [AcActualFlight]
    
    private enum CodingKeys: String, CodingKey {
        case flights = "AcActualFlights"
    }
}

public class AcActualFlight: Model {
    public var ac: String?
    public var flightLog: String?
    public var flightLeg: Int?
    public var origin: String?
    public var destination: String?
    public var flightDate: Date?
    public var flightOnHour: Int?
    public var flightOnMinute: Int?
    public var hasData: Int?
    public var etops: String?
    public var blockHour: Int?
    public var blockMinute: Int?
    public var flightStartDate: Date? // For Request
    public var flightEndDate: Date? // For Request
    
    public init() { }
}

extension AcActualFlight {
    enum CodingKeys: String, CodingKey {
        case ac = "AC"
        case flightLog = "FLIGHT_LOG"
        case flightLeg = "FLIGHT_LEG"
        case origin = "ORIGIN"
        case destination = "DESTINATION"
        case flightDate = "FLIGHT_DATE"
        case flightOnHour = "ON_HOUR"
        case flightOnMinute = "ON_MINUTE"
        case hasData = "HAS_DATA"
        case etops = "ETOPS"
        case blockHour = "BLOCK_HOURS"
        case blockMinute = "BLOCK_MINUTES"
        case flightStartDate = "flightStartDate"
        case flightEndDate = "flightEndDate"
    }
}
