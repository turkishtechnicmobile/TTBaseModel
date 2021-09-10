//
//  ProfilePhoto.swift
//  TTAsistan
//
//  Created by MnzfM 25.10.2018.
//  Copyright © 2018 MnzfM. All rights reserved.
//

import Foundation
import ObjectMapper

public class ProfilePhoto : ResponseModelBase {
    
    public var thumbnailPhoto : String?
    
    public required init() {
        super.init()
    }
    
    public required init(map: Map) {
        super.init(map: map)
    }
    
    open override func mapping(map: Map){
        
        thumbnailPhoto <- map[SerializationKeys.thumbnailPhoto]
    }
    
    public func thumbnailPhotoData() -> Data? {
        guard let thumbnailPhoto = thumbnailPhoto else {
            return nil
        }
        return Data.init(base64Encoded: thumbnailPhoto)
    }

}


extension ProfilePhoto {
    
    private struct SerializationKeys {
        static let thumbnailPhoto = "thumbnailPhoto"
    }
}
