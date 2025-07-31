//
//  NutritionRingView.swift
//  SwiftUIDemo
//
//  Created by NuTrack on 2024/7/31.
//

import SwiftUI

struct NutritionRingView: View {
    let nutritionData: NutritionData
    
    var body: some View {
        ZStack {
            // Background ring
            Circle()
                .stroke(Color.gray.opacity(0.2), lineWidth: 20)
                .frame(width: 200, height: 200)
            
            // Multi-color nutrition ring using Canvas
            Canvas { context, size in
                let rect = CGRect(origin: .zero, size: size)
                let center = CGPoint(x: rect.midX, y: rect.midY)
                let radius = min(size.width, size.height) / 2 - 10
                
                // Calculate segment angles for carbs, protein, fat
                let carbsAngle = Angle.degrees(Double(nutritionData.carbs.percentage) * 360.0 * 0.3) // Scale down for visibility
                let proteinAngle = Angle.degrees(Double(nutritionData.protein.percentage) * 360.0 * 0.3)
                let fatAngle = Angle.degrees(Double(nutritionData.fat.percentage) * 360.0 * 0.3)
                
                // Draw carbs segment
                context.stroke(
                    Path { path in
                        path.addArc(center: center, radius: radius, 
                                  startAngle: .degrees(-90), 
                                  endAngle: .degrees(-90) + carbsAngle, 
                                  clockwise: false)
                    },
                    with: .color(.carbsColor),
                    style: StrokeStyle(lineWidth: 20, lineCap: .round)
                )
                
                // Draw protein segment
                context.stroke(
                    Path { path in
                        path.addArc(center: center, radius: radius, 
                                  startAngle: .degrees(-90) + carbsAngle, 
                                  endAngle: .degrees(-90) + carbsAngle + proteinAngle, 
                                  clockwise: false)
                    },
                    with: .color(.proteinColor),
                    style: StrokeStyle(lineWidth: 20, lineCap: .round)
                )
                
                // Draw fat segment
                context.stroke(
                    Path { path in
                        path.addArc(center: center, radius: radius, 
                                  startAngle: .degrees(-90) + carbsAngle + proteinAngle, 
                                  endAngle: .degrees(-90) + carbsAngle + proteinAngle + fatAngle, 
                                  clockwise: false)
                    },
                    with: .color(.fatColor),
                    style: StrokeStyle(lineWidth: 20, lineCap: .round)
                )
            }
            .frame(width: 200, height: 200)
            .animation(.easeInOut(duration: 1.0), value: nutritionData.calorieProgress)
            
            // Center content displaying remaining calories
            VStack(spacing: 4) {
                Text("\(nutritionData.remainingCalories)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.primaryBlue)
                
                Text("剩餘卡路里")
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
        nutritionData: NutritionData.sample
    )
    .padding()
}