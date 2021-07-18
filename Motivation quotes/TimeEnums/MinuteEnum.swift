//
//  MinuteEnum.swift
//  Motivation quotes
//
//  Created by atheer on 2021-07-07.
//

import Foundation

enum MinuteEnum: String, CaseIterable, Identifiable {
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
    case Twentyfive     = "25"
    case Twentysix      = "26"
    case Twentyseven    = "27"
    case Twentyeight    = "28"
    case Twentynine     = "29"
    case Thirty         = "30"
    case Thirtyone      = "31"
    case Thirtytwo      = "32"
    case Thirtythree    = "33"
    case Thirtyfour     = "34"
    case Thirtyfive     = "35"
    case Thirtysix      = "36"
    case Thirtyseven    = "37"
    case Thirtyeight    = "38"
    case Thirtynine     = "39"
    case Forty          = "40"
    case Fortyone       = "41"
    case Fortytwo       = "42"
    case Fortythree     = "43"
    case Fortyfour      = "44"
    case Fortyfive      = "45"
    case Fortysix       = "46"
    case Fortyseven     = "47"
    case Fortyeight     = "48"
    case Fortynine      = "49"
    case Fifty          = "50"
    case Fiftyone       = "51"
    case Fiftytwo       = "52"
    case Fiftythree     = "53"
    case Fiftyfour      = "54"
    case Fiftyfive      = "55"
    case Fiftysix       = "56"
    case Fiftyseven     = "57"
    case Fiftyeight     = "58"
    case Fiftynine      = "59"
    
    var id: String { self.rawValue}
}
