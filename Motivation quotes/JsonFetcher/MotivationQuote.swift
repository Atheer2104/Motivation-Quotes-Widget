//
//  MotivationQuote.swift
//  Motivation quotes
//
//  Created by atheer on 2021-06-20.
//

import Foundation
import SwiftUI

struct MotivationQuote: Identifiable, Codable {
    var quoteText: String
    var quoteAuthor: String
    
    var id : String { quoteAuthor }
}

struct MotivationQuotes: Codable {
    var Quotes: [MotivationQuote]
    
    private static func readJsonFile(fileName name: String) -> Data? {
        do {
            if let filePath = Bundle.main.path(forResource: name, ofType: "json") {
                let fileUrl = URL(fileURLWithPath: filePath)
                let data = try Data(contentsOf: fileUrl)
                return data
            }
        } catch {
            print("error: \(error)")
        }
        return nil
    }
    
    private static func parseQuote() -> MotivationQuotes? {
        do {
            if let data = readJsonFile(fileName: "quotes") {
                let decodedData = try JSONDecoder().decode(MotivationQuotes.self, from: data)
                
            return decodedData
            }
        } catch {
            print("error: \(error)")
        }
        return nil
    }
    
    static func getQuotes(_ num: Int) -> [MotivationQuote] {
        if let Quotes = parseQuote() {
            var quotes: [MotivationQuote] = []
            for _ in 0..<num {
                quotes.append(Quotes.Quotes.randomElement()!)
                
            }
            return quotes
        }
        
        return [MotivationQuote(quoteText: "N/A", quoteAuthor: "N/A")]
    }
    
}

