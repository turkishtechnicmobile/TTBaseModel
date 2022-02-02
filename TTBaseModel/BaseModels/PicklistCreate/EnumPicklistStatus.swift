//
//  EnumPicklistStatus.swift
//  TTBaseModel
//
//  Created by Nazif MASMANACI on 15.10.2021.
//  Copyright © 2021 Turkish Technic. All rights reserved.
//

import TTBaseApp


public enum PicklistStatus : String {
    case CLOSED      = "CLOSED"
    case OPEN        = "OPEN"
    case CANCEL      = "CANCEL"
    case TRANSFERRED = "TRANSFERRED"
    case FROZEN      = "FROZEN"

    
    public func getColor() -> UIColor? {
        
        switch self {
        case .CANCEL:      return UIColor(rgb:0xCD010E) // KIRMIZI
        case .OPEN:        return UIColor(rgb:0x4C8EE2) //MAVI
        case .CLOSED:      return UIColor(rgb:0x5EAE6A) // YESIL
        case .TRANSFERRED: return UIColor(rgb:0xE48F5D) // TURUNCU
        case .FROZEN:      return UIColor(rgb:0x4C8EE2) //MAVI
        }
    }
}

public enum PicklistPnStatus : String {
    case CLOSED      = "CLOSED"
    case OPEN        = "OPEN"
    case CANCEL      = "CANCEL"
    case MISSING     = "MISSING - CLOSED"
    
    public func getColor() -> UIColor? {
        
        switch self {
        case .CANCEL:  return UIColor(rgb:0xCD010E) // KIRMIZI
        case .OPEN:    return UIColor(rgb:0x4C8EE2) //MAVI
        case .CLOSED:  return UIColor(rgb:0x5EAE6A) // YESIL
        case .MISSING: return UIColor(rgb:0xE48F5D) // TURUNCU
        }
    }
}
