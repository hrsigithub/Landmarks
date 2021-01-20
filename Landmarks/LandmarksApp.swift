//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Hiroshi.Nakai on 2021/01/18.
//

import SwiftUI

@main
struct LandmarksApp: App {
    
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
