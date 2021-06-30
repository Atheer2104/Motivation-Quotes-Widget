//
//  MotivationalQuoteView.swift
//  Motivation quotes
//
//  Created by atheer on 2021-06-20.
//

import SwiftUI

struct MotivationalQuoteView: View {
    
    let data: MotivationQuote
    let textColor: Color
    
    var body: some View {
        VStack() {
            Spacer()
            
            Text(data.quoteText)
                .padding(.horizontal)
                .font(.system(size: 16, weight: .regular, design: .serif))
                .foregroundColor(textColor)
                
                
            Text("-\(data.quoteAuthor)")
                .italic()
                .padding(.horizontal)
                .font(.system(size: 12, weight: .semibold, design: .serif))
                .foregroundColor(textColor)
                
            Spacer()
        }
    }
}


