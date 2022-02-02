//
//  DefectImage.swift
//  TTBaseModel
//
//  Created by Ramazan Memişoğlu on 4.10.2021.
//  Copyright © 2021 Turkish Technic. All rights reserved.
//

import Foundation
public class DefectImageRequest: Model {
    public var blobNo: Int?
    public var blobLine: Int?
    
    public var defectType: String?
    public var defect: String?
    public var defectItem: Int?
    public var image: String?

    public init() { }
}

public class DefectImageResponse: Model {
    public var images: [DefectImageModel]?

    public init() { }
}

public class DefectImageModel: Model {
    public var bLobLine: Int?
    public var blobItem: String?

    public init() { }
}

// Add
public class DefectAddImageResponse: Model {
    public var blob: DefectBlob?

    public init() { }
}

public class DefectBlob: Model {
    public var bLobNo: Int?

    public init() { }
}

