//
//  HomeView.swift
//  Motivation quotes
//
//  Created by atheer on 2021-07-07.
//

import SwiftUI

struct HomeView: View {
    @State var showingSheet: Bool = false
    @ObservedObject var bannerAdmobSize: BannerAdmobSize = .shared
    
    var body: some View {
        VStack() {
            
            HStack{
                Image("logo")
                    .resizable()
                    .frame(width: 90, height: 90, alignment: .center)
                    .scaledToFit()
            }
            
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
            
            
            BannerAdmob()
                .frame(width: bannerAdmobSize.adGADSize.size.width, height: bannerAdmobSize.adGADSize.size.height, alignment: .center)
            
        }
        .padding()
     
    }
}

