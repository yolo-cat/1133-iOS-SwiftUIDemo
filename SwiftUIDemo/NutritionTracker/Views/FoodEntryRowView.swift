//
//  FoodEntryRowView.swift
//  SwiftUIDemo
//
//  Created by NuTrack on 2024/7/31.
//

import SwiftUI

struct FoodEntryRowView: View {
    let entry: FoodEntry
    let theme: AppTheme
    
    var body: some View {
        HStack(spacing: 12) {
            // Time circle
            ZStack {
                Circle()
                    .fill(theme.primaryColor.opacity(0.1))
                    .frame(width: 44, height: 44)
                
                Text(entry.time)
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundColor(theme.primaryColor)
            }
            
            // Food description
            VStack(alignment: .leading, spacing: 2) {
                Text(entry.description)
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .lineLimit(2)
                
                Text("總計 \(entry.totalCaloriePercentage)% 卡路里")
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
            
            // Calorie percentage badge
            Text("\(entry.totalCaloriePercentage)%")
                .font(.caption)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(.horizontal, 8)
                .padding(.vertical, 4)
                .background(theme.primaryColor)
                .cornerRadius(12)
        }
        .padding(.vertical, 8)
        .padding(.horizontal, 16)
        .background(Color(.systemGray6))
        .cornerRadius(12)
    }
}

#Preview {
    VStack(spacing: 12) {
        FoodEntryRowView(
            entry: FoodEntry.sampleEntries[0],
            theme: .blue
        )
        
        FoodEntryRowView(
            entry: FoodEntry.sampleEntries[1],
            theme: .cyan
        )
        
        FoodEntryRowView(
            entry: FoodEntry.sampleEntries[2],
            theme: .purple
        )
    }
    .padding()
}