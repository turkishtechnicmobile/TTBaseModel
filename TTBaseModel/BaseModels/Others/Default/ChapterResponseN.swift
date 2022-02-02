//
//  ChapterResponseN.swift
//  TTBaseModel
//
//  Created by Remzi YILDIRIM on 12.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class ChapterResponseN: ResponseModelBase {
    // MARK: Properties
    public var chapters:[ChapterModel]?
    
    public required init() {
        super.init()
    }
    
    public required init(map: Map) {
        super.init(map: map)
    }
    
    // MARK: Mapping
    public override func mapping(map: Map){
        super.mapping(map: map)
        self.chapters <- map[SerializationKeys.chapters]
    }
}

extension ChapterResponseN {
    private struct SerializationKeys {
        static let chapters = "Chapters"
    }
}

// MARK: - Model
public class ChapterModel: Mappable {
    
    public var chapter : String!
    public var description : String!
    
    public required init() {
    }
    
    public required init(map: Map) {
    }
    
    public func mapping(map: Map){
        var chapterInt = 0
        chapterInt <- map[SerializationKeys.chapter]
        chapter = "\(chapterInt)"
        description <- map[SerializationKeys.description]
    }
}

extension ChapterModel {
    private struct SerializationKeys {
        static let chapter = "CHAPTER"
        static let description = "DESCRIPTION_TEXT"
    }
}
