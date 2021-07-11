//
//  CustomDivider.swift
//  Motivation quotes
//
//  Created by atheer on 2021-07-11.
//

import SwiftUI

struct CustomDivider: View {
    let width: CGFloat = 2
    var body: some View {
        Rectangle()
            .fill(Color(UIColor.label))
            .frame(height: width)
            .edgesIgnoringSafeArea(.horizontal)
    }
}

