//
//  NutritionData.swift
//  SwiftUIDemo
//
//  Created by NuTrack on 2024/7/31.
//

import Foundation

struct NutritionData {
    var caloriesConsumed: Int
    var caloriesBurned: Int
    var caloriesGoal: Int
    var carbs: NutrientData
    var protein: NutrientData
    var fat: NutrientData
    
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
        carbs: NutrientData(current: 23, goal: 120, unit: "g"),
        protein: NutrientData(current: 50, goal: 180, unit: "g"),
        fat: NutrientData(current: 88, goal: 179, unit: "g")
    )
}

struct NutrientData {
    var current: Int
    var goal: Int
    var unit: String
    
    var progress: Double {
        Double(current) / Double(goal)
    }
    
    var percentage: Int {
        Int(progress * 100)
    }
}