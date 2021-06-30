//
//  ContentView.swift
//  Motivation quotes
//
//  Created by atheer on 2021-06-20.
//

import SwiftUI

struct ContentView: View {
    
    @State var showingSheet: Bool = false
    
    var body: some View {
        VStack() {
            Spacer()
            
            Text("Your are now all set to start adding widgets to your Home Screen😁")
                .font(.headline)
                .padding()
            
            Text("From the Home Screen, touch and hold an empty area until the apps jiggle")
                .font(.subheadline)
                .padding()
            
            Text("Then tap the + button in the upper left corner to add the widget")
                .font(.subheadline)
                .padding()
            
            Spacer()
            
            Button("Configure Widget") {
                showingSheet.toggle()
            }
            .foregroundColor(Color(UIColor.label))
            .modifier(BackgroundModifier())
            .sheet(isPresented: $showingSheet) {
                ConfigureWidgetView()
            }
            
            
            Spacer()
        }
        .padding()
     
    }
}
