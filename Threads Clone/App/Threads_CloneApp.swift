//
//  Threads_CloneApp.swift
//  Threads Clone
//
//  Created by Deepam Dhakal on 08/12/2023.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}

//MARK: Google sign in authentication

@main
struct Threads_CloneApp: App {
    // register app delegate for Firebase setup
      @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate

    var body: some Scene {
        WindowGroup {
           ThreadsTabView()
                .preferredColorScheme(.light)
        }
    }
}
