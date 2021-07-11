//
//  Indicator.swift
//  Motivation quotes
//
//  Created by atheer on 2021-07-09.
//

import SwiftUI

struct Indicator: View {
    private let radius: CGFloat = 16
    private let HEIGHT: CGFloat = 6
    private let WIDTH: CGFloat  = 60
    
    var body: some View {
        RoundedRectangle(cornerRadius: radius)
            .fill(Color.secondary)
            .frame(width: WIDTH, height: HEIGHT)
    }
}


