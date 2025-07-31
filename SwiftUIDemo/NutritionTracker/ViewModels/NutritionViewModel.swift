//
//  NutritionViewModel.swift
//  SwiftUIDemo
//
//  Created by NuTrack on 2024/7/31.
//

import Foundation

@Observable
class NutritionViewModel {
    var nutritionData: NutritionData
    var foodEntries: [FoodEntry]
    var selectedTab = 0
    
    init() {
        self.nutritionData = NutritionData.sample
        self.foodEntries = FoodEntry.sampleEntries
    }
    
    func addFoodEntry(_ entry: FoodEntry) {
        foodEntries.append(entry)
        // Update nutrition data based on the new entry
        updateNutritionFromEntries()
    }
    
    func updateNutritionFromEntries() {
        // Calculate total calories from all food entries
        let totalCaloriesFromFood = foodEntries.reduce(0) { total, entry in
            total + (Int(Double(nutritionData.caloriesGoal) * Double(entry.totalCaloriePercentage) / 100.0))
        }
        nutritionData.caloriesConsumed = totalCaloriesFromFood
    }
    
    func removeEntry(at indexSet: IndexSet) {
        foodEntries.remove(atOffsets: indexSet)
        updateNutritionFromEntries()
    }
}