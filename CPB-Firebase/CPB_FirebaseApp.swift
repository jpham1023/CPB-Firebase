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
    @StateObject var viewmodel: collegeViewModel = collegeViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewmodel)
        }
    }
}
