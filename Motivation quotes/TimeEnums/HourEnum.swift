//
//  HourEnum.swift
//  Motivation quotes
//
//  Created by atheer on 2021-07-07.
//

import Foundation

enum HourEnum: String, CaseIterable, Identifiable {
    case Zero           = "0"
    case One            = "1"
    case Two            = "2"
    case Three          = "3"
    case Four           = "4"
    case Five           = "5"
    case Six            = "6"
    case Seven          = "7"
    case Eight          = "8"
    case Nine           = "9"
    case Ten            = "10"
    case Eleven         = "11"
    case Twelve         = "12"
    case Thirteen       = "13"
    case Fourteen       = "14"
    case Fifteen        = "15"
    case Sixteen        = "16"
    case Seventeen      = "17"
    case Eighteen       = "18"
    case Nineteen       = "19"
    case Twenty         = "20"
    case Twentyone      = "21"
    case Twentytwo      = "22"
    case Twentythree    = "23"
    case Twentyfour     = "24"
    
    var id: String { self.rawValue}
}
