//
//  FoodEntry.swift
//  SwiftUIDemo
//
//  Created by NuTrack on 2024/7/31.
//

import Foundation

struct FoodEntry: Identifiable, Hashable {
    let id = UUID()
    let time: String
    let items: [FoodItem]
    
    var totalCaloriePercentage: Int {
        items.reduce(0) { $0 + $1.caloriePercentage }
    }
    
    var description: String {
        items.map { "\($0.name)(\($0.caloriePercentage)%)" }.joined(separator: " + ")
    }
    
    static let sampleEntries = [
        FoodEntry(
            time: "09:00",
            items: [
                FoodItem(name: "煎蛋", caloriePercentage: 10),
                FoodItem(name: "吐司", caloriePercentage: 30)
            ]
        ),
        FoodEntry(
            time: "12:30",
            items: [
                FoodItem(name: "雞胸肉", caloriePercentage: 25),
                FoodItem(name: "蔬菜沙拉", caloriePercentage: 8)
            ]
        ),
        FoodEntry(
            time: "18:00",
            items: [
                FoodItem(name: "鮭魚", caloriePercentage: 22),
                FoodItem(name: "糙米飯", caloriePercentage: 15)
            ]
        )
    ]
}

struct FoodItem: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let caloriePercentage: Int
}