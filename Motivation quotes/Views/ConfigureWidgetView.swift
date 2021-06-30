//
//  ConfigureWidgetView.swift
//  Motivation quotes
//
//  Created by atheer on 2021-06-28.
//

import SwiftUI
import WidgetKit

struct ConfigureWidgetView: View {
    
    let data = MotivationQuotes.getQuotes(1)
    @Environment(\.colorScheme) var colorScheme
    
    @AppStorage("bacgroundColor", store: UserDefaults(suiteName: "group.com.atheer.bacgroundColor"))
    var bacgroundColor: Color = .black
    
    @AppStorage("textColor", store: UserDefaults(suiteName: "group.com.atheer.textColor"))
    var textColor: Color = .white
    
    var body: some View {
        VStack {
            Text("Widget Preview")
                .font(.title)
                .padding()
        
            VStack {
                MotivationalQuoteView(data: data[0], textColor: textColor)
                    .frame(maxWidth: .infinity, maxHeight: 350)
                    .background(bacgroundColor)
            }
            
            Spacer()
            
            VStack(spacing: 20) {
                ColorPicker("Background Color", selection: $bacgroundColor, supportsOpacity: true)
                    .modifier(BackgroundModifier())
                
                ColorPicker("Text Color", selection: $textColor, supportsOpacity: true)
                    .modifier(BackgroundModifier())
                
                Button("Reset Colors", action: {
                    bacgroundColor = colorScheme == .dark ? Color.black : Color.white
                    textColor = colorScheme == .dark ? Color.white : Color.black
                    print("reseted")
                })
                    .foregroundColor(Color(UIColor.label))
                    .modifier(BackgroundModifier())
            }
            
            Spacer()
            
            
        }
        .onReceive(NotificationCenter.default.publisher(for: UIApplication.willResignActiveNotification)) { _ in
            WidgetCenter.shared.reloadAllTimelines()
        }
    }
}

