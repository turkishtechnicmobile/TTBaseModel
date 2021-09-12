//
//  BaseError.swift
//  TTBaseService
//
//  Created by Remzi YILDIRIM on 15.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation

public enum BaseError: Error {
    case invalidRequest
    case cancelled
    case connection(error: Error)
    case authorization
    case missingResponseData
    case requestFailed(response: HTTPURLResponse)
    case deserialization(error: Error, value: Any)
    case business(error: BusinessError)
}

extension BaseError: CustomDebugStringConvertible {
    public var debugDescription: String {
        switch self {
        case .invalidRequest:
            return "Invalid request url or encoding error"
        case .cancelled:
            return "User cancelled the process"
        case .connection(let error):
            return "Connection error: \(error)"
        case .authorization:
            return "Authorization error"
        case .missingResponseData:
            return "No valid HTTP response from server"
        case .requestFailed(let response):
            return "HTTP request failed with response \n \(response)"
        case .deserialization(let error, let value):
            let response = String(describing: value as? [String: Any])
            return "Error during deserialization of the response: \(error.localizedDescription) response Value: \(response)"
        case .business(let error):
            return "Business error: \(error.errorMessage) - \(error.errorCode) "
        }
    }
}

extension BaseError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .invalidRequest:
            return "Oops!. Someting went wrong."
        case .cancelled:
            return "User cancelled the process"
        case .connection(let error):
            return "Oops!. Someting went wrong. Make sure your device is connected to the internet. \(error.localizedDescription)"
        case .authorization:
            return "Your session has expired. Please log in again."
        case .missingResponseData:
            return "Oops!. Someting went wrong. Can't receive data from server."
        case .requestFailed(let response):
            return "Oops!. Someting went wrong. Request failed with \(response.statusCode)"
        case .deserialization(_, _):
            return "Oops!. Someting went wrong. Can't receive valid data from server."
        case .business(let error):
            return "\(error.errorMessage)"
        }
    }
}

public class BusinessError: CustomNSError {
    private let code: Int
    private let message: String

    public static var errorDomain: String {
        return QueryConstant.bundleIdentifier ?? ""
    }
    
    public var errorCode: Int {
        return code
    }
    
    public var errorMessage: String {
        return message
    }
    
    init(code: Int, message: String) {
        self.code = code
        self.message = message
    }
    
    public convenience init(code: Int? = nil, message: String? = nil) {
        let defaultCode = -1000
        let defaultMessage = "Unknown error occured"
        self.init(code: code ?? defaultCode, message: message ?? defaultMessage)
    }
}
