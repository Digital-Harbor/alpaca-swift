//
//  File.swift
//  
//
//  Created by Mike Mello on 4/19/23.
//

import Foundation

enum AlpacaError: Error {
    case requestError(String)
}

extension AlpacaError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .requestError(let reason):
            return NSLocalizedString(reason, comment: "localized failure reason")
        }
    }
}
