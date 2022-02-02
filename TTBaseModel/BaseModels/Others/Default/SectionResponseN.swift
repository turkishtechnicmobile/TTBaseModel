//
//  SectionResponseN.swift
//  TTBaseModel
//
//  Created by Remzi YILDIRIM on 12.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class SectionResponseN: ResponseModelBase {
    // MARK: Properties
    public var sections: [SectionModel]?
    
    public required init() {
        super.init()
    }
    
    public required init(map: Map) {
        super.init(map: map)
    }
    
    // MARK: Mapping
    public override func mapping(map: Map){
        super.mapping(map: map)
        self.sections <- map[SerializationKeys.sections]
    }
}

extension SectionResponseN {
    private struct SerializationKeys {
        static let sections = "Sections"
    }
}

// MARK: - Model
public class SectionModel: Mappable {
    
    public var section : String!
    public var description : String!
    
    public required init() {
    }
    
    public required init(map: Map) {
    }
    
    public func mapping(map: Map){
        var sectionInt = 0
        sectionInt <- map[SerializationKeys.section]
        section = "\(sectionInt)"
        description <- map[SerializationKeys.description]
        
    }
}

extension SectionModel {
    private struct SerializationKeys {
        static let section = "SECTION"
        static let description = "DESCRIPTION_TEXT"
    }
}
