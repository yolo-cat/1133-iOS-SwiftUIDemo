//
//  NutritionRingView.swift
//  SwiftUIDemo
//
//  Created by NuTrack on 2024/7/31.
//

import SwiftUI

struct NutritionRingView: View {
    let nutritionData: NutritionData
    let theme: AppTheme
    
    var body: some View {
        ZStack {
            // Background ring
            Circle()
                .stroke(Color.gray.opacity(0.2), lineWidth: 20)
                .frame(width: 200, height: 200)
            
            // Progress ring
            Circle()
                .trim(from: 0, to: min(nutritionData.calorieProgress, 1.0))
                .stroke(
                    theme.ringGradient,
                    style: StrokeStyle(lineWidth: 20, lineCap: .round)
                )
                .frame(width: 200, height: 200)
                .rotationEffect(.degrees(-90))
                .animation(.easeInOut(duration: 1.0), value: nutritionData.calorieProgress)
            
            // Center content
            VStack(spacing: 4) {
                Text("\(nutritionData.remainingCalories)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(theme.primaryColor)
                
                Text("剩余卡路里")
                    .font(.caption)
                    .foregroundColor(.secondary)
                
                Text("目標 \(nutritionData.caloriesGoal)")
                    .font(.caption2)
                    .foregroundColor(.secondary)
            }
        }
    }
}

#Preview {
    NutritionRingView(
        nutritionData: NutritionData.sample,
        theme: .blue
    )
}