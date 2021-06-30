//
//  BackgroundModifier.swift
//  Motivation quotes
//
//  Created by atheer on 2021-06-27.
//

import Foundation
import SwiftUI

struct BackgroundModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(.all, 20)
            .background(Color(UIColor.systemIndigo).opacity(0.85))
            .cornerRadius(15)
    }
}
