//
//  BannerAdmobSize.swift
//  Motivation quotes
//
//  Created by atheer on 2021-06-30.
//

import Foundation
import Combine
import GoogleMobileAds

class BannerAdmobSize: ObservableObject {
    
    static let shared = BannerAdmobSize()
    
    @Published var adGADSize: GADAdSize = GADCurrentOrientationAnchoredAdaptiveBannerAdSizeWithWidth(UIScreen.main.bounds.size.width)
}
