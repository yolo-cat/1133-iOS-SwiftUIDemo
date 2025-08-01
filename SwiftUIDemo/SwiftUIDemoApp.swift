//
//  SwiftUIDemoApp.swift
//  SwiftUIDemo
//
//  Created by Harry Ng on 6/4/2025.
//

import SwiftUI

@main
struct SwiftUIDemoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

struct ContentView: View {
    var body: some View {
        // Use the new modular nutrition tracker implementation
        NewNutritionTrackerView()
    }
}
