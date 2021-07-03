//
//  BannerAdmob.swift
//  Motivation quotes
//
//  Created by atheer on 2021-06-30.
//

import Foundation
import SwiftUI
import GoogleMobileAds

final class BannerAdmob: UIViewControllerRepresentable {
    @ObservedObject var bannerAdmobSize: BannerAdmobSize = .shared
    
    func makeUIViewController(context: Context) -> UIViewController {
        let banner = GADBannerView(adSize: bannerAdmobSize.adGADSize)
        
        let viewController = UIViewController()
        banner.adUnitID = "ca-app-pub-7604332955528357/8121863874"
        banner.rootViewController = viewController
        viewController.view.addSubview(banner)
        viewController.view.frame = CGRect(origin: .zero, size: bannerAdmobSize.adGADSize.size)
        banner.load(GADRequest())

        return viewController
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
}
