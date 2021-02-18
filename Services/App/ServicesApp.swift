//
//  ServicesApp.swift
//  Services
//
//  Created by Артём Мошнин on 15/2/21.
//

import SwiftUI
import Firebase

@main
struct ServicesApp: App {
    @AppStorage("newUser") private var newUser: Bool = true
    @UIApplicationDelegateAdaptor(Delegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            if newUser {
                LandingView()
            } else {
                TabView {
                    HomeView()
                        .tabItem {
                            Label("Home", systemImage: "house")
                        }
                }
            }
        }
    }
}

// MARK: - Connecting Firebase

class Delegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}
