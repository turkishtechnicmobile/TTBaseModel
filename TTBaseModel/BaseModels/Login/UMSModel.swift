//
//  UMSModel.swift
//  TTBaseModel
//
//  Created by MnzfM on 15.12.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import TTBaseApp
import ObjectMapper



public class UserRoleResponse: Mappable {
    
    public var links: [String]?
   // public var menus: [HamburgerMenu]?
    
    public required init() { }
    
    public required init(map: Map) { }
    
    public func mapping(map: Map){
        links <- map["links"]
        
    }
}

