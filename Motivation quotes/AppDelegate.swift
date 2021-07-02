//
//  AppDelegate.swift
//  Motivation quotes
//
//  Created by atheer on 2021-06-30.
//

import Foundation
import SwiftUI
import GoogleMobileAds

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        GADMobileAds.sharedInstance().start(completionHandler: nil)
        
        
        return true
    }
}
