//
//  CPB_FirebaseApp.swift
//  CPB-Firebase
//
//  Created by Jenny Pham on 11/8/23.
//

import SwiftUI
import FirebaseCore

@main

struct CPB_FirebaseApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
