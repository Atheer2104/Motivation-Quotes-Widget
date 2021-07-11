//
//  ViewExt.swift
//  Motivation quotes
//
//  Created by atheer on 2021-07-07.
//

import Foundation
import SwiftUI

extension View {
    @ViewBuilder func isHidden(_ hidden: Bool, remove: Bool = false) -> some View {
        if hidden {
            if !remove {
                self.hidden()
            }
        } else {
            self
        }
    }
}
