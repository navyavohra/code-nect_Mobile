//
//  AppDelegate.swift
//  code-nect
//
//  Created by Navya Vohra on 2025-01-19.
//

import UIKit
import Firebase

class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        FirebaseApp.configure()
        return true
    }
}
