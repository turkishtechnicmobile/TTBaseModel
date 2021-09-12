//
//  BaseModel.swift
//  TTBaseModel
//
//  Created by Remzi YILDIRIM on 16.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import TTBaseApp

open class BaseModel: Model {

}

open class BaseItemViewModel: ItemViewModel {
    @Inject public var dateFormat: DateFormat
    
    public init() { }
}
