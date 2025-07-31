//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by NuTrack on 2024/7/31.
//

import SwiftUI

struct NutritionContentView: View {
    @State private var viewModel = NutritionViewModel()
    @State private var themeManager = ThemeManager()
    
    var body: some View {
        ZStack {
            // Background
            Color(.systemBackground)
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                // Header
                headerView
                
                // Main Content
                ScrollView {
                    VStack(spacing: 24) {
                        // Calorie tracking section
                        calorieTrackingSection
                        
                        // Nutrition progress section
                        nutritionProgressSection
                        
                        // Today's entries section
                        todayEntriesSection
                    }
                    .padding(.horizontal, 20)
                    .padding(.bottom, 100) // Space for tab bar
                }
                
                Spacer()
                
                // Tab Bar
                TabBarView(selectedTab: $viewModel.selectedTab, theme: themeManager.currentTheme)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 20)
            }
        }
    }
    
    private var headerView: some View {
        HStack {
            Button(action: {}) {
                Image(systemName: "chevron.left")
                    .font(.title2)
                    .fontWeight(.medium)
                    .foregroundColor(themeManager.currentTheme.primaryColor)
            }
            
            Spacer()
            
            Text("NuTrack")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(themeManager.currentTheme.primaryColor)
            
            Spacer()
            
            Button(action: {
                // Cycle through themes
                let themes = AppTheme.allCases
                if let currentIndex = themes.firstIndex(of: themeManager.currentTheme) {
                    let nextIndex = (currentIndex + 1) % themes.count
                    themeManager.setTheme(themes[nextIndex])
                }
            }) {
                Circle()
                    .fill(themeManager.currentTheme.primaryColor)
                    .frame(width: 32, height: 32)
                    .overlay(
                        Text("A")
                            .font(.caption)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    )
            }
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 16)
        .background(.ultraThinMaterial)
    }
    
    private var calorieTrackingSection: some View {
        VStack(spacing: 20) {
            // Central nutrition ring
            NutritionRingView(
                nutritionData: viewModel.nutritionData,
                theme: themeManager.currentTheme
            )
            
            // Consumed vs Burned
            HStack(spacing: 40) {
                VStack {
                    Text("\(viewModel.nutritionData.caloriesConsumed)")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(themeManager.currentTheme.primaryColor)
                    
                    Text("已攝取")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                
                VStack {
                    Text("\(viewModel.nutritionData.caloriesBurned)")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(themeManager.currentTheme.secondaryColor)
                    
                    Text("已消耗")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
            }
        }
        .padding(.vertical, 20)
    }
    
    private var nutritionProgressSection: some View {
        VStack(spacing: 16) {
            HStack {
                Text("營養素追蹤")
                    .font(.headline)
                    .fontWeight(.semibold)
                Spacer()
            }
            
            VStack(spacing: 16) {
                ProgressBarView(
                    title: "碳水化合物",
                    nutrientData: viewModel.nutritionData.carbs,
                    color: .carbsColor
                )
                
                ProgressBarView(
                    title: "蛋白質",
                    nutrientData: viewModel.nutritionData.protein,
                    color: .proteinColor
                )
                
                ProgressBarView(
                    title: "脂肪",
                    nutrientData: viewModel.nutritionData.fat,
                    color: .fatColor
                )
            }
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 20)
        .background(Color(.systemGray6))
        .cornerRadius(16)
    }
    
    private var todayEntriesSection: some View {
        VStack(spacing: 16) {
            HStack {
                Text("今日飲食記錄")
                    .font(.headline)
                    .fontWeight(.semibold)
                Spacer()
                
                Button("查看全部") {
                    viewModel.selectedTab = 1 // Switch to diary tab
                }
                .font(.caption)
                .foregroundColor(themeManager.currentTheme.primaryColor)
            }
            
            LazyVStack(spacing: 12) {
                ForEach(viewModel.foodEntries.prefix(3)) { entry in
                    FoodEntryRowView(
                        entry: entry,
                        theme: themeManager.currentTheme
                    )
                }
            }
        }
    }
}

#Preview {
    NutritionContentView()
}