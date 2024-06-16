//
//  ContactType.swift
//  Contacts
//

import Foundation
import UIKit

enum ContactInfoType {
    case address
    case qarzdorligi
    case haqdorligi
    case other
    
    var title: String {
        switch self {
        case .address: return "Address"
        case .qarzdorligi: return "Qarzdorligi"
        case .haqdorligi: return "Haqdorligi"
        case .other: return "Other"
        }
    }
    
    
    var keyboardType: UIKeyboardType {
        switch self {
        case .address: return .default
        case .qarzdorligi: return .default
        case .haqdorligi: return .default
        case .other: return .default
        }
    }
    
    
//}
//extension ContactInfoType {
    
    static func contactdataType (numberSection:Int) -> ContactInfoType {

        if numberSection == 2 {
            return .qarzdorligi
        } else if numberSection == 3 {
            return .haqdorligi
        } else if numberSection == 4 {
            return .address
        } else {
            return .other
        }
    }
    
    static func section (type: ContactInfoType) -> Int {
        
        switch type {
        case .address:
           return 1
        case .qarzdorligi:
            return 2
        case .haqdorligi:
            return 3
        case .other:
            return 4
        }
    }
    
}
