# SwiftUI Demo 課程專案

<div align="center">
  <img src="https://developer.apple.com/assets/elements/icons/swiftui/swiftui-96x96_2x.png" alt="SwiftUI Logo" width="100"/>
  
  **從零基礎到專案實戰的完整 SwiftUI 學習課程**
  
  [![Swift](https://img.shields.io/badge/Swift-5.9-orange.svg)](https://swift.org)
  [![SwiftUI](https://img.shields.io/badge/SwiftUI-iOS%2017+-blue.svg)](https://developer.apple.com/xcode/swiftui/)
  [![Xcode](https://img.shields.io/badge/Xcode-15+-blue.svg)](https://developer.apple.com/xcode/)
  [![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
</div>

## 📚 課程概述

本專案提供了一個完整的 SwiftUI 學習體系，從基礎概念到高級應用，透過 **50+ 個實際範例** 和 **3 個完整專案** 讓您掌握現代 iOS 開發技能。

### 🎯 適合對象
- iOS 開發初學者
- 想要學習 SwiftUI 的開發者
- 需要系統化學習資源的學生
- 準備轉職 iOS 開發的程式設計師

### ✨ 課程特色
- 🎯 **循序漸進**：6 個學習階段，從基礎到進階
- 💡 **實例驅動**：每個概念都有對應的 Demo 檔案
- 🚀 **專案導向**：3 個完整的實戰專案
- 📚 **完整文件**：詳細的學習指南和疑難排解
- 🌟 **最新技術**：基於 SwiftUI 5.0 和 iOS 17+

---

## 🗂️ 專案結構

```
SwiftUIDemo/
├── 📁 Demo/                          # 學習範例
│   ├── 📁 Views/                     # UI 元件範例
│   │   ├── 📁 1_Primitive/           # 基礎元件
│   │   │   ├── Text_Demo.swift       # 文字顯示
│   │   │   ├── Image_Demo.swift      # 圖片處理
│   │   │   ├── Button_Demo.swift     # 按鈕互動
│   │   │   ├── Circle_Demo.swift     # 基礎圖形
│   │   │   └── Color_Demo.swift      # 顏色系統
│   │   ├── 📁 2_Container/           # 容器佈局
│   │   │   ├── VStack_Demo.swift     # 垂直佈局
│   │   │   ├── HStack_Demo.swift     # 水平佈局
│   │   │   ├── ZStack_Demo.swift     # 層疊佈局
│   │   │   ├── List_Demo.swift       # 列表顯示
│   │   │   ├── ScrollView_Demo.swift # 滾動視圖
│   │   │   └── Grid_Demo.swift       # 網格佈局
│   │   └── 📁 3_Control/             # 控制元件
│   │       ├── Toggle_Demo.swift     # 開關控制
│   │       ├── TextField_Demo.swift  # 文字輸入
│   │       └── Form_Demo.swift       # 表單設計
│   ├── 📁 ViewModifiers/             # 視圖修飾器
│   ├── 📁 Navigation/                # 導航系統
│   ├── 📁 Animation/                 # 動畫效果
│   ├── 📁 DataFlow/                  # 資料流管理
│   └── 📁 Observation/               # 觀察者模式
├── 📁 MoodTracker/                   # 專案一：情緒追蹤器
├── 📁 TaskManager/                   # 專案二：任務管理器
└── 📁 TheOneThing/                   # 專案三：專注任務應用
```

---

## 🚀 快速開始

### 系統需求
- macOS 14.0+ (Sonoma)
- Xcode 15.0+
- iOS 17.0+ Simulator

### 安裝步驟

1. **Clone 專案**
   ```bash
   git clone https://github.com/yolo-cat/1133-iOS-SwiftUIDemo.git
   cd 1133-iOS-SwiftUIDemo
   ```

2. **開啟專案**
   ```bash
   open SwiftUIDemo.xcodeproj
   ```

3. **選擇目標裝置**
   - 在 Xcode 中選擇 iOS Simulator
   - 建議使用 iPhone 15 Pro

4. **執行專案**
   - 按下 `Cmd + R` 或點擊 Run 按鈕
   - 專案將在模擬器中啟動

### 第一次執行

專案啟動後，您會看到主要的導航介面，可以瀏覽不同的 Demo 範例：

1. **基礎元件** - 學習 Text、Image、Button 等
2. **佈局容器** - 掌握 VStack、HStack、ZStack
3. **控制元件** - 練習 Toggle、TextField、Form
4. **進階功能** - 探索動畫、導航、狀態管理
5. **實戰專案** - 完成三個完整應用

---

## 📖 學習路徑

### 🎯 第一階段：基礎概念 (1-2週)
**目標**：理解 SwiftUI 核心理念

- [ ] SwiftUI 簡介和環境設置
- [ ] 宣告式 UI 概念
- [ ] View 協議理解
- [ ] Preview 功能使用

**相關檔案**：`ContentView.swift`

### 🎯 第二階段：基礎元件 (2-3週)
**目標**：掌握所有基礎 UI 元件

- [ ] 文字顯示與格式化 (`Text_Demo.swift`)
- [ ] 圖片顯示與處理 (`Image_Demo.swift`)
- [ ] 按鈕互動設計 (`Button_Demo.swift`)
- [ ] 基礎圖形繪製 (`Circle_Demo.swift`)
- [ ] 顏色系統應用 (`Color_Demo.swift`)

### 🎯 第三階段：容器佈局 (2-3週)
**目標**：學會建立複雜佈局

- [ ] 垂直佈局 (`VStack_Demo.swift`)
- [ ] 水平佈局 (`HStack_Demo.swift`)
- [ ] 層疊佈局 (`ZStack_Demo.swift`)
- [ ] 列表顯示 (`List_Demo.swift`)
- [ ] 滾動視圖 (`ScrollView_Demo.swift`)
- [ ] 網格佈局 (`Grid_Demo.swift`)

### 🎯 第四階段：互動與狀態 (3-4週)
**目標**：掌握使用者互動和狀態管理

- [ ] 狀態管理 (`@State`, `@Binding`)
- [ ] 表單元件 (`Toggle_Demo.swift`, `TextField_Demo.swift`, `Form_Demo.swift`)
- [ ] 資料追蹤 (`DrinkTracker.swift`)
- [ ] 手勢處理 (`Tap_Demo.swift`, `Drag_Demo.swift`)

### 🎯 第五階段：進階功能 (3-4週)
**目標**：學習進階開發技巧

- [ ] 動畫效果 (`SimpleAnimation.swift`, `TextAnimationView.swift`)
- [ ] 導航系統 (`NavigationStack_Demo.swift`)
- [ ] 模態視圖 (`Sheet_Demo.swift`, `Popover_Demo.swift`)
- [ ] 分頁介面 (`TabView_Demo.swift`)
- [ ] 觀察者模式 (`Counter.swift`, `CounterEnvironment.swift`)
- [ ] 環境值系統 (`Environment_Demo.swift`)

### 🎯 第六階段：實戰專案 (4-6週)
**目標**：完成完整應用開發

- [ ] **MoodTracker** - 情緒追蹤器
  - 情緒記錄和追蹤
  - 資料視覺化
  - 本地資料儲存

- [ ] **TaskManager** - 任務管理器
  - 多層級導航
  - 複雜狀態管理
  - MVVM 架構實踐

- [ ] **TheOneThing** - 專注任務應用
  - 極簡設計實踐
  - 時間管理功能
  - 通知系統整合

---

## 📋 學習資源

### 📚 核心文件
- [`CourseDesign.md`](./CourseDesign.md) - 完整課程架構設計
- [`DetailedGuide.md`](./DetailedGuide.md) - 每個 Demo 的詳細教學指南

### 🔗 官方資源
- [SwiftUI Documentation](https://developer.apple.com/documentation/swiftui)
- [SwiftUI Tutorials](https://developer.apple.com/tutorials/swiftui)
- [Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/)
- [SF Symbols](https://developer.apple.com/sf-symbols/)

### 🌟 社群資源
- [Hacking with Swift](https://www.hackingwithswift.com/quick-start/swiftui)
- [SwiftUI Lab](https://swiftui-lab.com/)
- [100 Days of SwiftUI](https://www.hackingwithswift.com/100/swiftui)

---

## 🎓 學習建議

### 💡 最佳實踐
1. **循序漸進**：按照課程階段順序學習
2. **動手實作**：每個概念都要親自寫程式碼
3. **記錄筆記**：建立個人學習記錄
4. **參與社群**：加入 iOS 開發者社群交流

### 📅 學習計劃
- **每日 1-2 小時**：學習新概念和完成練習
- **週末 2-3 小時**：復習和完成階段性專案
- **每週評估**：檢核學習進度和調整計劃

### 🔧 開發環境
```swift
// 推薦的 Xcode 設置
- Theme: Default (Dark)
- Font Size: 14pt
- Line Numbers: Enabled
- Code Folding: Enabled
- Minimap: Enabled
```

---

## 🛠️ 疑難排解

### 常見問題

#### Q: Xcode Preview 無法載入
```swift
// 解決方案
1. 重新啟動 Xcode
2. 清除 Derived Data
3. 檢查 Preview 語法：
#Preview {
    ContentView()
}
```

#### Q: 編譯錯誤 "Cannot find 'XXX' in scope"
```swift
// 檢查項目
1. import SwiftUI 語句
2. 變數名稱拼寫
3. 函數作用域
```

#### Q: 狀態更新無效
```swift
// 確認使用正確的屬性包裝器
@State private var count = 0        // ✅ 正確
var count = 0                       // ❌ 錯誤
```

### 🆘 尋求幫助
- 查看 [`CourseDesign.md`](./CourseDesign.md) 中的疑難排解章節
- 在 Issues 中提出問題
- 參考官方文檔
- 加入 iOS 開發者社群

---

## 🤝 貢獻指南

我們歡迎各種形式的貢獻！

### 貢獻方式
- 🐛 **回報錯誤**：發現程式碼或文檔錯誤
- 💡 **功能建議**：提出新的範例或改進建議
- 📚 **文檔完善**：改進教學內容或添加範例
- 🌍 **翻譯協助**：協助多語言版本

### 提交步驟
1. Fork 本專案
2. 建立功能分支 (`git checkout -b feature/AmazingFeature`)
3. 提交更改 (`git commit -m 'Add some AmazingFeature'`)
4. 推送分支 (`git push origin feature/AmazingFeature`)
5. 開啟 Pull Request

---

## 🙏 致謝

### 特別感謝
- Apple Inc. - 提供優秀的 SwiftUI 框架
- Swift 社群 - 豐富的學習資源
- 所有貢獻者 - 持續改進課程內容

### 引用專案
本課程參考了以下優秀專案和資源：
- [SwiftUI Tutorials by Apple](https://developer.apple.com/tutorials/swiftui)
- [Hacking with Swift](https://www.hackingwithswift.com/)
- [SwiftUI Examples](https://github.com/ivanvorobei/SwiftUI)

---

## 📄 授權條款

本專案採用 MIT 授權條款 - 詳見 [LICENSE](LICENSE) 檔案

---

<div align="center">
  <h3>🌟 如果這個專案對您有幫助，請給我們一個 Star！</h3>
  
  **開始您的 SwiftUI 學習之旅** 🚀
  
  [查看課程設計](./CourseDesign.md) | [詳細學習指南](./DetailedGuide.md) | [回報問題](https://github.com/yolo-cat/1133-iOS-SwiftUIDemo/issues)
</div>

---

*最後更新：2024年7月 | 課程版本：v1.0*
