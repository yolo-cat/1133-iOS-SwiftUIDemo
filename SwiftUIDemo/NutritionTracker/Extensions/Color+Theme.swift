//
//  Color+Theme.swift
//  SwiftUIDemo
//
//  Created by NuTrack on 2024/7/31.
//

import SwiftUI

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }

        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}

extension Color {
    // Nutrition-specific colors
    static let carbsColor = Color(hex: "#4CAF50")
    static let proteinColor = Color(hex: "#FF9800") 
    static let fatColor = Color(hex: "#E91E63")
    
    // Main theme colors as specified in requirements
    static let primaryBlue = Color(red: 0.29, green: 0.56, blue: 0.89) // #4A90E2
    static let secondaryGreen = Color(red: 0.65, green: 0.84, blue: 0.65) // #A5D6A7
    static let accentOrange = Color(red: 1.0, green: 0.67, blue: 0.57) // #FFAB91
}