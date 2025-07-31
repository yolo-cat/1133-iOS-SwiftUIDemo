//
//  ProgressBarView.swift
//  SwiftUIDemo
//
//  Created by NuTrack on 2024/7/31.
//

import SwiftUI

struct ProgressBarView: View {
    let title: String
    let nutrientData: NutrientData
    let color: Color
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text(title)
                    .font(.subheadline)
                    .fontWeight(.medium)
                
                Spacer()
                
                Text("\(nutrientData.percentage)%")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(color)
            }
            
            HStack {
                Text("\(nutrientData.current)\(nutrientData.unit)")
                    .font(.caption)
                    .foregroundColor(.secondary)
                
                Spacer()
                
                Text("\(nutrientData.goal)\(nutrientData.unit)")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            
            // Progress bar
            GeometryReader { geometry in
                ZStack(alignment: .leading) {
                    Rectangle()
                        .fill(Color.gray.opacity(0.2))
                        .frame(height: 8)
                        .cornerRadius(4)
                    
                    Rectangle()
                        .fill(color)
                        .frame(width: geometry.size.width * min(nutrientData.progress, 1.0), height: 8)
                        .cornerRadius(4)
                        .animation(.easeInOut(duration: 0.8), value: nutrientData.progress)
                }
            }
            .frame(height: 8)
        }
        .padding(.vertical, 4)
    }
}

#Preview {
    VStack(spacing: 16) {
        ProgressBarView(
            title: "碳水化合物",
            nutrientData: NutrientData(current: 23, goal: 120, unit: "g"),
            color: .carbsColor
        )
        
        ProgressBarView(
            title: "蛋白質",
            nutrientData: NutrientData(current: 50, goal: 180, unit: "g"),
            color: .proteinColor
        )
        
        ProgressBarView(
            title: "脂肪",
            nutrientData: NutrientData(current: 88, goal: 179, unit: "g"),
            color: .fatColor
        )
    }
    .padding()
}