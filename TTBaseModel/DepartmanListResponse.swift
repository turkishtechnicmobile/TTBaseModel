//
//  DepartmanListResponse.swift
//  TTBaseModel
//
//  Created by Remzi YILDIRIM on 13.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class DepartmanListResponse: ResponseModelBase {
    // MARK: Properties
    public var slotList : [SlotList]?
    public var count : Int?
    
    public required init() {
        super.init()
    }
    
    public required init(map: Map) {
        super.init(map: map)
    }
    
    // MARK: Mapping
    public override func mapping(map: Map) {
        self.slotList <- map["SLOT_LIST"]
        self.count <- map["COUNT"]
    }
}

public class SlotList: Mappable {
    public var text : String!
    public var value : String!
    
    public required init?(map: Map) { }
    
    required init?() { }
    
    public func mapping(map: Map){
        text <- map["TEXT"]
        value <- map["VALUE"]
    }
}
