//
//  LearnHowToAddWidget.swift
//  Motivation quotes
//
//  Created by atheer on 2021-07-17.
//

import SwiftUI
import AVKit
import SSSwiftUIGIFView

struct LearnHowToAddWidget: View {
    var body: some View {
        VStack {
            Indicator()
                .padding(.top, 20)
                .padding(.bottom, 10)
            
            CustomDivider()
            
            Spacer()
            
            Text("This gif shows you how to add a widget")
                .font(.title3)
                .bold()
                .padding(.vertical)
            
            SwiftUIGIFPlayerView(gifName: "addwidgetGIF")
                .frame(minWidth: 0,maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        }
        .frame(minWidth: 0,maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
    }
}

