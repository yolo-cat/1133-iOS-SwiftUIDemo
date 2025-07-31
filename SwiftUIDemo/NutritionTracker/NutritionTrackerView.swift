//
//  NutritionTrackerView.swift
//  SwiftUIDemo
//
//  Created by NuTrack on 2024/7/31.
//

import SwiftUI

struct NutritionTrackerView: View {
    @State private var viewModel = NutritionViewModel()
    
    var body: some View {
        TabView(selection: $viewModel.selectedTab) {
            // Home Tab
            NavigationView {
                mainNutritionView
            }
            .tabItem {
                Image(systemName: "house.fill")
                Text("Home")
            }
            .tag(0)
            
            // Diary Tab
            NavigationView {
                diaryView
            }
            .tabItem {
                Image(systemName: "book.fill")
                Text("Diary")
            }
            .tag(1)
            
            // Add Tab (Center with larger icon)
            NavigationView {
                addFoodView
            }
            .tabItem {
                Image(systemName: "plus.circle.fill")
                Text("Add")
            }
            .tag(2)
            
            // Trends Tab
            NavigationView {
                trendsView
            }
            .tabItem {
                Image(systemName: "chart.line.uptrend.xyaxis")
                Text("Trends")
            }
            .tag(3)
            
            // Settings Tab
            NavigationView {
                settingsView
            }
            .tabItem {
                Image(systemName: "gearshape.fill")
                Text("Settings")
            }
            .tag(4)
        }
        .accentColor(.primaryBlue)
    }
    
    // MARK: - Main Nutrition Tracking View
    
    private var mainNutritionView: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                // Header with navigation, title, and user avatar
                headerView
                
                // Main scrollable content
                ScrollView {
                    VStack(spacing: 24) {
                        // Central nutrition ring and calorie tracking
                        calorieTrackingSection
                        
                        // Nutrition progress bars (carbs, protein, fat)
                        nutritionProgressSection
                        
                        // Today's food entries
                        todayEntriesSection
                    }
                    .padding(.horizontal, 20)
                    .padding(.bottom, 20)
                }
            }
        }
        .navigationBarHidden(true)
    }
    
    // MARK: - Header View
    
    private var headerView: some View {
        HStack {
            // Notification icon (left)
            Button(action: {}) {
                Image(systemName: "bell.fill")
                    .font(.title2)
                    .foregroundColor(.primaryBlue)
            }
            
            Spacer()
            
            // App title (center)
            Text("NuTrack")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.primaryBlue)
            
            Spacer()
            
            // User avatar (right)
            Button(action: {}) {
                Circle()
                    .fill(.primaryBlue)
                    .frame(width: 32, height: 32)
                    .overlay(
                        Image(systemName: "person.fill")
                            .font(.caption)
                            .foregroundColor(.white)
                    )
            }
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 16)
        .background(.ultraThinMaterial)
    }
    
    // MARK: - Calorie Tracking Section
    
    private var calorieTrackingSection: some View {
        VStack(spacing: 20) {
            // Central nutrition ring showing calorie progress
            NutritionRingView(nutritionData: viewModel.nutritionData)
            
            // Consumed vs Burned display
            HStack(spacing: 40) {
                VStack {
                    Text("\(viewModel.nutritionData.caloriesConsumed)")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.primaryBlue)
                    
                    Text("已攝取")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                
                VStack {
                    Text("\(viewModel.nutritionData.caloriesBurned)")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.secondaryGreen)
                    
                    Text("已燃燒")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
            }
        }
        .padding(.vertical, 20)
    }
    
    // MARK: - Nutrition Progress Section
    
    private var nutritionProgressSection: some View {
        VStack(spacing: 16) {
            HStack {
                Text("營養素追蹤")
                    .font(.headline)
                    .fontWeight(.semibold)
                Spacer()
            }
            
            VStack(spacing: 16) {
                // Carbohydrates progress bar
                NutritionProgressBar(
                    title: "碳水化合物",
                    nutrientData: viewModel.nutritionData.carbs,
                    color: .carbsColor
                )
                
                // Protein progress bar
                NutritionProgressBar(
                    title: "蛋白質",
                    nutrientData: viewModel.nutritionData.protein,
                    color: .proteinColor
                )
                
                // Fat progress bar
                NutritionProgressBar(
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
    
    // MARK: - Today's Entries Section
    
    private var todayEntriesSection: some View {
        VStack(spacing: 16) {
            HStack {
                Text("今日記錄")
                    .font(.headline)
                    .fontWeight(.semibold)
                Spacer()
                
                Text(todayDateString)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            
            LazyVStack(spacing: 12) {
                ForEach(viewModel.foodEntries) { entry in
                    FoodEntryRow(entry: entry)
                }
            }
        }
    }
    
    // MARK: - Other Tab Views (Placeholder implementations)
    
    private var diaryView: some View {
        VStack {
            Text("飲食日記")
                .font(.largeTitle)
                .fontWeight(.bold)
            Text("完整的飲食記錄將在此顯示")
                .foregroundColor(.secondary)
        }
        .navigationTitle("Diary")
    }
    
    private var addFoodView: some View {
        VStack {
            Text("新增食物")
                .font(.largeTitle)
                .fontWeight(.bold)
            Text("在此新增食物記錄")
                .foregroundColor(.secondary)
        }
        .navigationTitle("Add Food")
    }
    
    private var trendsView: some View {
        VStack {
            Text("趨勢分析")
                .font(.largeTitle)
                .fontWeight(.bold)
            Text("營養攝取趨勢圖表將在此顯示")
                .foregroundColor(.secondary)
        }
        .navigationTitle("Trends")
    }
    
    private var settingsView: some View {
        VStack {
            Text("設定")
                .font(.largeTitle)
                .fontWeight(.bold)
            Text("應用程式設定選項")
                .foregroundColor(.secondary)
        }
        .navigationTitle("Settings")
    }
    
    // MARK: - Helper Properties
    
    private var todayDateString: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy年MM月dd日"
        formatter.locale = Locale(identifier: "zh_TW")
        return formatter.string(from: Date())
    }
}

// MARK: - Supporting Views

struct NutritionProgressBar: View {
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

struct FoodEntryRow: View {
    let entry: FoodEntry
    
    var body: some View {
        HStack(spacing: 12) {
            // Time circle
            ZStack {
                Circle()
                    .fill(Color.primaryBlue.opacity(0.1))
                    .frame(width: 44, height: 44)
                
                Text(entry.time)
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundColor(.primaryBlue)
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
            
            // Percentage badge
            Text("\(entry.totalCaloriePercentage)%")
                .font(.caption)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(.horizontal, 8)
                .padding(.vertical, 4)
                .background(.primaryBlue)
                .cornerRadius(12)
        }
        .padding(.vertical, 8)
        .padding(.horizontal, 16)
        .background(Color(.systemGray6))
        .cornerRadius(12)
    }
}

#Preview {
    NutritionTrackerView()
}