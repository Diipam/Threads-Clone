//
//  Threads_CloneApp.swift
//  Threads Clone
//
//  Created by Deepam Dhakal on 08/12/2023.
//

import SwiftUI

@main
struct Threads_CloneApp: App {
    var body: some Scene {
        WindowGroup {
           ThreadsTabView()
                .preferredColorScheme(.light)
        }
    }
}
