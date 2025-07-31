//
//  NutritionModel.swift
//  SwiftUIDemo
//
//  Created by NuTrack on 2024/7/31.
//

import Foundation
import SwiftUI

// MARK: - Core Nutrition Data Models

struct NutritionData {
    var caloriesConsumed: Int
    var caloriesBurned: Int
    var caloriesGoal: Int
    var carbs: NutritionValue
    var protein: NutritionValue
    var fat: NutritionValue
    
    var remainingCalories: Int {
        caloriesGoal - caloriesConsumed + caloriesBurned
    }
    
    var calorieProgress: Double {
        Double(caloriesConsumed) / Double(caloriesGoal)
    }
    
    static let sample = NutritionData(
        caloriesConsumed: 850,
        caloriesBurned: 320,
        caloriesGoal: 1973,
        carbs: NutritionValue(current: 23, target: 120),
        protein: NutritionValue(current: 50, target: 180),
        fat: NutritionValue(current: 88, target: 179)
    )
}

struct NutritionValue {
    var current: Double
    var target: Double
    
    var percentage: Double {
        current / target
    }
    
    var percentageInt: Int {
        Int(percentage * 100)
    }
}

// MARK: - Food Entry Models

struct FoodEntry: Identifiable {
    let id = UUID()
    var time: String
    var name: String
    var nutritionType: NutritionType
    var percentage: Double
    
    static let sampleEntries = [
        FoodEntry(time: "09:00", name: "煎蛋 + 吐司", nutritionType: .mixed, percentage: 40),
        FoodEntry(time: "12:30", name: "雞胸肉 + 蔬菜沙拉", nutritionType: .protein, percentage: 33),
        FoodEntry(time: "18:00", name: "鮭魚 + 糙米飯", nutritionType: .balanced, percentage: 37)
    ]
}

enum NutritionType {
    case carbs
    case protein
    case fat
    case mixed
    case balanced
    
    var color: Color {
        switch self {
        case .carbs: return .carbsColor
        case .protein: return .proteinColor
        case .fat: return .fatColor
        case .mixed: return Color(red: 0.29, green: 0.56, blue: 0.89)
        case .balanced: return Color(red: 0.65, green: 0.84, blue: 0.65)
        }
    }
}

// MARK: - Observable State Management

@Observable
class NutritionModel {
    var nutritionData: NutritionData
    var foodEntries: [FoodEntry]
    var selectedTab = 0
    
    init() {
        self.nutritionData = NutritionData.sample
        self.foodEntries = FoodEntry.sampleEntries
    }
    
    func addFoodEntry(_ entry: FoodEntry) {
        foodEntries.append(entry)
        updateNutritionFromEntries()
    }
    
    func updateNutritionFromEntries() {
        let totalCaloriesFromFood = foodEntries.reduce(0) { total, entry in
            total + Int(Double(nutritionData.caloriesGoal) * entry.percentage / 100.0)
        }
        nutritionData.caloriesConsumed = totalCaloriesFromFood
    }
    
    func removeEntry(at indexSet: IndexSet) {
        foodEntries.remove(atOffsets: indexSet)
        updateNutritionFromEntries()
    }
}

// MARK: - Color Extensions

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
    
    // Main theme colors as specified in requirements
    static let primaryBlue = Color(red: 0.29, green: 0.56, blue: 0.89) // #4A90E2
    static let secondaryGreen = Color(red: 0.65, green: 0.84, blue: 0.65) // #A5D6A7
    static let accentOrange = Color(red: 1.0, green: 0.67, blue: 0.57) // #FFAB91
    
    // Nutrition-specific colors
    static let carbsColor = Color(red: 0.3, green: 0.69, blue: 0.31) // Green
    static let proteinColor = Color(red: 0.29, green: 0.56, blue: 0.89) // Blue
    static let fatColor = Color(red: 0.91, green: 0.12, blue: 0.39) // Pink
}