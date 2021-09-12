//
//  FlightRequest.swift
//  NMBaseModel
//
//  Created by Remzi YILDIRIM on 12.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class FlightRequest: RequestModelBase {

    public var isDeparture:Bool!
    public var origin: String?
    public var destination: String?
    public var ac: String?
    public var fleet: String?
    
    public required init() {
        super.init()
    }
    
    public required init(map: Map) throws {
        try super.init(map: map)
    }
    
    public required init(isBeta:String) {
        super.init()
    }
    
    public required init(isDeparture:Bool,origin:String,destination:String,ac:String, fleet:String) {
        super.init()
        
        self.isDeparture = isDeparture
        self.origin = origin
        self.destination = destination
        self.ac = ac
        self.fleet = fleet
    }
    
    // MARK: Mapping
    open override func dictionaryRepresentation() -> [String: Any] {
        var dictionary = super.dictionaryRepresentation()
        if let value = isDeparture { dictionary[SerializationKeys.isDeparture] = value }
        if let value = origin { dictionary[SerializationKeys.origin] = value }
        if let value = destination { dictionary[SerializationKeys.destination] = value }
        if let value = ac { dictionary[SerializationKeys.ac] = value }
        if let value = fleet { dictionary[SerializationKeys.fleet] = value }
        return dictionary
    }
}

extension FlightRequest {
    private struct SerializationKeys {
        static let isDeparture = "isDeparture"
        static let origin = "Origin"
        static let destination = "Destination"
        static let ac = "Ac"
        static let fleet = "Fleet"
    }
}
