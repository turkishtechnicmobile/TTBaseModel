//
//  UserAuthRequest.swift
//  NMBaseModel
//
//  Created by Remzi YILDIRIM on 12.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class UserAuthRequest: RequestModelBase {
    // MARK: Properties
    public var projectId: Int?
    public var registerId: String?

    public required init() {
        super.init()
    }

     public required init(map: Map) throws {
         try super.init(map: map)
     }

    public required init(projectId: Int, registerId: String?) {
        super.init()
        self.projectId = projectId
        self.registerId = registerId
    }

    // MARK: Mapping
    override public func dictionaryRepresentation() -> [String : Any] {
        var dictionary = super.dictionaryRepresentation()

        if let value = projectId { dictionary[SerializationKeys.projectId] = value }
        if let value = registerId { dictionary[SerializationKeys.registerId] = value }

        return dictionary

    }

}

extension UserAuthRequest {
    private struct SerializationKeys {
        static let projectId = "ProjectId"
        static let registerId = "RegisterId"
    }
}
