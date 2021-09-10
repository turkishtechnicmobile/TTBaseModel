//
//  WorkAccompRequest.swift
//  NMBaseModel
//
//  Created by Remzi YILDIRIM on 12.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class WorkAccompRequest: RequestModelBase {
    // MARK: Properties
    public var wo:Int!
    public var taskCard:String!
    public var ac:String?
    public var text:String?
    public var id:Int!
    public var modifyBy:String?
    public var createdBy:String?
    
    public var pn:String?
    public var pnsn:String?
    
    public required init() {
        super.init()
    }
    
    public required init(map: Map) throws {
        try super.init(map: map)
    }
    
    public required init(wo:Int,taskCard:String, waID:Int? = nil, modifyBy:String? = nil) { // getWOA // delete
        super.init()
        self.wo = wo
        self.taskCard = taskCard
        self.modifyBy = modifyBy
        
        if let waID = waID {
            self.id = waID
        }
    }
    
    public required init(wo:Int,taskCard:String,ac:String,text:String,by:String, pn:String?, pnsn:String?, _ id:Int? = nil) { // Add // update
        super.init()
        self.wo = wo
        self.taskCard = taskCard
        self.ac = ac
        self.text = text
        
        if let id = id {
            self.modifyBy = by
            self.id = id

        }else{
            self.createdBy = by
        }
        
        self.pn = pn
        self.pnsn = pnsn
    }
    
    // MARK: Mapping
    
    open override func dictionaryRepresentation() -> [String: Any] {
        var dictionary = super.dictionaryRepresentation()
        if let value = wo { dictionary[SerializationKeys.wo] = value }
        if let value = taskCard { dictionary[SerializationKeys.taskCard] = value }
        if let value = ac { dictionary[SerializationKeys.ac] = value }
        if let value = text { dictionary[SerializationKeys.text] = value }
        if let value = createdBy { dictionary[SerializationKeys.createdBy] = value }
        if let value = modifyBy { dictionary[SerializationKeys.modifyBy] = value }
        if let value = id { dictionary[SerializationKeys.id] = value }
        if let value = pn { dictionary[SerializationKeys.pn] = value }
        if let value = pnsn { dictionary[SerializationKeys.pnsn] = value }

        return dictionary
    }
}

extension WorkAccompRequest {
    private struct SerializationKeys {
        static let wo = "wo"
        static let taskCard = "task_card"
        static let ac = "ac"
        static let text = "work_accomplished"
        static let id = "work_accomplished_line"
        static let modifyBy = "modified_by"
        static let createdBy = "created_by"
        static let pn  = "pn"
        static let pnsn = "pn_sn"
    }
}
