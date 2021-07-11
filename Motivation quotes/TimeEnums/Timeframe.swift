//
//  Timeframe.swift
//  Motivation quotes
//
//  Created by atheer on 2021-07-07.
//

import Foundation

enum Timeframe: String, CaseIterable, Identifiable {
    case hour       = "Hour"
    case minute     = "Minute"
    
    var id: String { self.rawValue }
    
}
