//
//  EmployeeResponse.swift
//  NMBaseModel
//
//  Created by Remzi YILDIRIM on 13.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation

public class EmployeeResponse: Model {
    public let employee: Employee?
    
    private enum CodingKeys: String, CodingKey {
        case employee = "Employee"
    }
    
//    required init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        self.employee = try? container.decode(Employee.self, forKey: .employee)
//        try super.init(from: decoder)
//    }
}
