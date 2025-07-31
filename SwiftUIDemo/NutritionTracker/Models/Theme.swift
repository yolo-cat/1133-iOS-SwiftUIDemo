//
//  Theme.swift
//  SwiftUIDemo
//
//  Created by NuTrack on 2024/7/31.
//

import SwiftUI

enum AppTheme: String, CaseIterable {
    case blue = "blue"
    case cyan = "cyan"
    case purple = "purple"
    case orange = "orange"
    case deepPurple = "deepPurple"
    
    var displayName: String {
        switch self {
        case .blue: return "藍色主題"
        case .cyan: return "青色主題"
        case .purple: return "紫色主題"
        case .orange: return "橙色主題"
        case .deepPurple: return "深紫主題"
        }
    }
    
    var primaryColor: Color {
        switch self {
        case .blue: return Color(hex: "#4A90E2")
        case .cyan: return Color(hex: "#50E3C2")
        case .purple: return Color(hex: "#BD10E0")
        case .orange: return Color(hex: "#F5A623")
        case .deepPurple: return Color(hex: "#9013FE")
        }
    }
    
    var secondaryColor: Color {
        switch self {
        case .blue: return Color(hex: "#A5D6A7")
        case .cyan: return Color(hex: "#B2EBF2")
        case .purple: return Color(hex: "#E1BEE7")
        case .orange: return Color(hex: "#FFF59D")
        case .deepPurple: return Color(hex: "#D1C4E9")
        }
    }
    
    var accentColor: Color {
        switch self {
        case .blue: return Color(hex: "#FFAB91")
        case .cyan: return Color(hex: "#FFD54F")
        case .purple: return Color(hex: "#FF8A80")
        case .orange: return Color(hex: "#A1887F")
        case .deepPurple: return Color(hex: "#81D4FA")
        }
    }
    
    var ringGradient: LinearGradient {
        LinearGradient(
            colors: [primaryColor, secondaryColor],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
    }
}

@Observable
class ThemeManager {
    var currentTheme: AppTheme = .blue
    
    func setTheme(_ theme: AppTheme) {
        currentTheme = theme
    }
}