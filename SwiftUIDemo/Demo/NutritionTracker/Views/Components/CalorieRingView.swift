//
//  CalorieRingView.swift
//  SwiftUIDemo
//
//  Created by NuTrack on 2024/7/31.
//

import SwiftUI

struct CalorieRingView: View {
    let nutritionData: NutritionData
    @State private var animationProgress: Double = 0
    
    var body: some View {
        ZStack {
            // Background ring
            Circle()
                .stroke(Color.gray.opacity(0.2), lineWidth: 20)
                .frame(width: 200, height: 200)
            
            // Nutrition rings using native SwiftUI Shape
            NutritionRingShape(
                carbsProgress: nutritionData.carbs.progress * animationProgress,
                proteinProgress: nutritionData.protein.progress * animationProgress,
                fatProgress: nutritionData.fat.progress * animationProgress
            )
            .stroke(style: StrokeStyle(lineWidth: 20, lineCap: .round))
            .frame(width: 200, height: 200)
            .rotationEffect(.degrees(-90)) // Start from top
            
            // Center content displaying remaining calories
            VStack(spacing: 4) {
                Text("\(nutritionData.remainingCalories)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.primaryBlue)
                    .scaleEffect(animationProgress)
                
                Text("KCAL LEFT")
                    .font(.caption)
                    .fontWeight(.medium)
                    .foregroundColor(.secondary)
                    .opacity(animationProgress)
                
                Text("目標 \(nutritionData.caloriesGoal)")
                    .font(.caption2)
                    .foregroundColor(.secondary)
                    .opacity(animationProgress)
            }
        }
        .onAppear {
            withAnimation(.easeInOut(duration: 1.5)) {
                animationProgress = 1.0
            }
        }
    }
}

/// 自定義 Shape 用於繪製營養素圓環
struct NutritionRingShape: Shape {
    let carbsProgress: Double
    let proteinProgress: Double
    let fatProgress: Double
    
    var animatableData: AnimatablePair<Double, AnimatablePair<Double, Double>> {
        get { AnimatablePair(carbsProgress, AnimatablePair(proteinProgress, fatProgress)) }
        set {
            carbsProgress = newValue.first
            proteinProgress = newValue.second.first
            fatProgress = newValue.second.second
        }
    }
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let center = CGPoint(x: rect.midX, y: rect.midY)
        let radius = min(rect.width, rect.height) / 2 - 10
        
        // Calculate angles for each segment
        let carbsAngle = carbsProgress * 0.8 * 360 // 最大佔80%的圓環
        let proteinAngle = proteinProgress * 0.8 * 360
        let fatAngle = fatProgress * 0.8 * 360
        
        // Draw carbs segment (green)
        if carbsProgress > 0 {
            path.addArc(
                center: center,
                radius: radius,
                startAngle: .degrees(0),
                endAngle: .degrees(carbsAngle),
                clockwise: false
            )
        }
        
        // Draw protein segment (blue)
        if proteinProgress > 0 {
            path.move(to: CGPoint(
                x: center.x + radius * cos(.degrees(carbsAngle).radians),
                y: center.y + radius * sin(.degrees(carbsAngle).radians)
            ))
            path.addArc(
                center: center,
                radius: radius,
                startAngle: .degrees(carbsAngle),
                endAngle: .degrees(carbsAngle + proteinAngle),
                clockwise: false
            )
        }
        
        // Draw fat segment (pink)
        if fatProgress > 0 {
            let startAngle = carbsAngle + proteinAngle
            path.move(to: CGPoint(
                x: center.x + radius * cos(.degrees(startAngle).radians),
                y: center.y + radius * sin(.degrees(startAngle).radians)
            ))
            path.addArc(
                center: center,
                radius: radius,
                startAngle: .degrees(startAngle),
                endAngle: .degrees(startAngle + fatAngle),
                clockwise: false
            )
        }
        
        return path
    }
}

/// 漸層色彩 Shape 用於多色圓環效果
struct GradientRingShape: Shape {
    let progress: Double
    
    var animatableData: Double {
        get { progress }
        set { progress = newValue }
    }
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let center = CGPoint(x: rect.midX, y: rect.midY)
        let radius = min(rect.width, rect.height) / 2 - 10
        
        path.addArc(
            center: center,
            radius: radius,
            startAngle: .degrees(0),
            endAngle: .degrees(progress * 270), // 最大270度
            clockwise: false
        )
        
        return path
    }
}

extension Angle {
    var radians: Double {
        return self.degrees * .pi / 180
    }
}

#Preview {
    CalorieRingView(nutritionData: .sample)
        .padding()
}