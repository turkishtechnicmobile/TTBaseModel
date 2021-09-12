//
//  BaseResponse.swift
//  TTBaseModel
//
//  Created by Remzi YILDIRIM on 13.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation

public class BaseResponse<T: Model> : Model {
    public let status: ResponseStatus
    public let data: T?
    
    private enum CodingKeys: String, CodingKey {
        case status = "status"
        case data = "data"
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        if let statusValueCore = try? container.decode(ResponseStatusCore.self, forKey: .status) {
            status = ResponseStatus(isSuccess: statusValueCore.isSuccess, message: statusValueCore.message, code: statusValueCore.code)
            data = try? container.decode(T.self, forKey: .data)
        } else if let statusValue = try? container.decode(ResponseStatus.self, forKey: .status) {
            status = statusValue
            data = try? container.decode(T.self, forKey: .data)
        } else {
            let container = try decoder.container(keyedBy: DynamicKey.self)
            let isSuccess = try container.allKeys
                .filter { [ResponseStatus.CodingKeys.isSuccess.rawValue, ResponseStatus.WrongCodingKeys.isSuccess.rawValue].contains($0.stringValue) }
                .compactMap { try container.decode(Bool.self, forKey: $0) }.first ?? false
            
            let message = try container.allKeys
                .filter { [ResponseStatus.CodingKeys.message.rawValue, ResponseStatus.WrongCodingKeys.message.rawValue].contains($0.stringValue) }
                .compactMap { try container.decode(String.self, forKey: $0) }.first
            
            let code = try? decoder.container(keyedBy: ResponseStatus.CodingKeys.self).decode(Int.self, forKey: .code)
            
            self.status = ResponseStatus(isSuccess: isSuccess, message: message, code: code)
            data = try? decoder.singleValueContainer().decode(T.self)
        }
    }
}

extension BaseResponse {
    public class ResponseStatus: Model {
        public let isSuccess: Bool
        public let message: String?
        public let code: Int?

        enum CodingKeys: String, CodingKey {
            case isSuccess = "IsSucceed"
            case message = "Message"
            case code = "Code"
        }
        
        enum WrongCodingKeys: String {
            case isSuccess = "isSucceed"
            case message = "message"
        }
        
        public init(isSuccess: Bool, message: String?, code: Int?) {
            self.isSuccess = isSuccess
            self.message = message
            self.code = code
        }
    }
    
    public class ResponseStatusCore: Model {
        public let isSuccess: Bool
        public let message: String?
        public let code: Int?
        public let internalMessage: String?

        enum CodingKeys: String, CodingKey {
            case isSuccess = "isSucceed"
            case message = "message"
            case code = "code"
            case internalMessage = "internalMessage"
        }
    }
}

struct DynamicKey: CodingKey {
    var stringValue: String
    init?(stringValue: String) {
        self.stringValue = stringValue
    }
    
    var intValue: Int?
    init?(intValue: Int) {
        self.stringValue = ""
        self.intValue = intValue
    }
}


//public class BaseResponse<T: Model>: Model {
//    public let status: ResponseStatus
//    public let data: T?
//
//    private enum CodingKeys: String, CodingKey {
//        case status = "status"
//        case data = "data"
//    }
//}
//
//extension BaseResponse {
//    public class ResponseStatus: Model {
//        public let isSuccess: Bool
//        public let message: String
//        public let code: Int
//
//        private enum CodingKeys: String, CodingKey {
//            case isSuccess = "IsSucceed"
//            case message = "Message"
//            case code = "Code"
//        }
//    }
//}
//
// MARK: New Decleration
//public class BaseResponseOld: Model {
//    public let isSuccess: Bool
//    public let message: String?
//    public let code: Int?
//
//    private enum CodingKeys: String, CodingKey {
//        case isSuccess = "IsSucceed"
//        case message = "Message"
//        case code = "Code"
//    }
//
//    enum WrongCodingKeys: String {
//        case isSuccess = "isSucceed"
//        case message = "message"
//    }
//
//    /// result sometimes contains isSucceed and message
//    /// sometimes contains IsSucceed and Message
//    public required init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: DynamicKey.self)
//
//        isSuccess = try container.allKeys
//            .filter { [CodingKeys.isSuccess.stringValue, WrongCodingKeys.isSuccess.rawValue].contains($0.stringValue) }
//            .compactMap { try container.decode(Bool.self, forKey: $0) }.first ?? false
//
//        message = try container.allKeys
//            .filter { [CodingKeys.message.stringValue, WrongCodingKeys.message.rawValue].contains($0.stringValue) }
//            .compactMap { try container.decode(String.self, forKey: $0) }.first
//
//        code = try? decoder.container(keyedBy: CodingKeys.self).decode(Int.self, forKey: .code)
//    }
//}
//
//public class BaseResponseOldNew<T: Model>: BaseResponseOld {
//    public let data: T?
//
//    required init(from decoder: Decoder) throws {
//        data = try? decoder.singleValueContainer().decode(T.self)
//        try super.init(from: decoder)
//    }
//}
