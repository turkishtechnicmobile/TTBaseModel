//
//  DefaultNote.swift
//  TTBaseModel
//
//  Created by Ramazan Memişoğlu on 29.09.2021.
//  Copyright © 2021 Turkish Technic. All rights reserved.
//

import Foundation

public class DefaultNoteRequest: Model {
    public var chapter: Int?
    public var systemTransaction: Int?
    
    public init() { }
}

extension DefaultNoteRequest {
    enum CodingKeys: String, CodingKey {
        case chapter = "chapter"
        case systemTransaction = "systemTransaction"
    }
}

public class DefaultNoteResponse: Model {
    public let notes: [String]
    
    private enum CodingKeys: String, CodingKey {
        case notes = "notes"
    }
}

public class DefaultNote: Model {
    public var note: String?
    public init(_ note: String) {
        self.note = note
    }
}
