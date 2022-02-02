//
//  NRCImageResponse.swift
//  TTBaseModel
//
//  Created by Ramazan Memişoğlu on 2.07.2021.
//  Copyright © 2021 Turkish Technic. All rights reserved.
//

import Foundation
import ObjectMapper

public class NRCImageResponse : Mappable {

    public var images: [ImageModel]!
    
    public required init() { }
    
    public required init(map: Map) { }
    
    public func mapping(map: Map) {
        self.images <- map[SerializationKeys.images]
    }
}

extension NRCImageResponse {
    private struct SerializationKeys {
        static let images = "images"
    }
}

// MARK: LopaInfoModel
public class ImageModel : Mappable {
 
    public var blobLine :Int!
    public var blobItem :String!
    
    public required init() { }
    
    public required init(map: Map) { }
    
    public func mapping(map: Map) {
        
        self.blobLine <- map[SerializationKeys.blobLine]
        self.blobItem <- map[SerializationKeys.blobItem]
    }
}

extension ImageModel {
    
    private struct SerializationKeys {
        static let blobLine = "bLobLine"
        static let blobItem = "blobItem"
    }
}

public class NRCAddImageResponse : Mappable {

    public var blob: Blob!
    
    public required init() { }
    
    public required init(map: Map) { }
    
    public func mapping(map: Map) {
        self.blob <- map[SerializationKeys.blob]
    }
}

extension NRCAddImageResponse {
    private struct SerializationKeys {
        static let blob = "blob"
    }
}

// MARK: LopaInfoModel
public class Blob : Mappable {
 
    public var blobNo :Int!
    
    public required init() { }
    
    public required init(map: Map) { }
    
    public func mapping(map: Map) {
        
        self.blobNo <- map[SerializationKeys.blobNo]
    }
}

extension Blob {
    private struct SerializationKeys {
        static let blobNo = "bLobNo"
    }
}
