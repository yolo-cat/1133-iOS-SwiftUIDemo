//
//  TabBarView.swift
//  SwiftUIDemo
//
//  Created by NuTrack on 2024/7/31.
//

import SwiftUI

struct TabBarView: View {
    @Binding var selectedTab: Int
    let theme: AppTheme
    
    var body: some View {
        HStack {
            TabBarItem(
                icon: "house.fill",
                title: "Home",
                isSelected: selectedTab == 0,
                theme: theme
            ) {
                selectedTab = 0
            }
            
            TabBarItem(
                icon: "book.fill",
                title: "Diary",
                isSelected: selectedTab == 1,
                theme: theme
            ) {
                selectedTab = 1
            }
            
            TabBarItem(
                icon: "plus.circle.fill",
                title: "Add",
                isSelected: selectedTab == 2,
                theme: theme,
                isCenter: true
            ) {
                selectedTab = 2
            }
            
            TabBarItem(
                icon: "chart.line.uptrend.xyaxis",
                title: "Trends",
                isSelected: selectedTab == 3,
                theme: theme
            ) {
                selectedTab = 3
            }
            
            TabBarItem(
                icon: "gearshape.fill",
                title: "Settings",
                isSelected: selectedTab == 4,
                theme: theme
            ) {
                selectedTab = 4
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 8)
        .background(.ultraThinMaterial)
        .cornerRadius(20)
        .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 5)
    }
}

struct TabBarItem: View {
    let icon: String
    let title: String
    let isSelected: Bool
    let theme: AppTheme
    var isCenter: Bool = false
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            VStack(spacing: 4) {
                Image(systemName: icon)
                    .font(.system(size: isCenter ? 24 : 18, weight: .medium))
                    .foregroundColor(isSelected ? theme.primaryColor : .secondary)
                    .scaleEffect(isCenter ? 1.2 : 1.0)
                
                if !isCenter {
                    Text(title)
                        .font(.caption2)
                        .fontWeight(.medium)
                        .foregroundColor(isSelected ? theme.primaryColor : .secondary)
                }
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical, 8)
            .background(
                isSelected ? theme.primaryColor.opacity(0.1) : Color.clear
            )
            .cornerRadius(12)
        }
    }
}

#Preview {
    VStack {
        Spacer()
        TabBarView(selectedTab: .constant(0), theme: .blue)
            .padding()
    }
}