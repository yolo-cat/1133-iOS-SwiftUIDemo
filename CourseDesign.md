# SwiftUI 課程架構設計

## 課程概述

本課程旨在為初學者提供完整且循序漸進的 SwiftUI 學習體驗，透過實際範例和專案實作，讓學習者掌握現代 iOS 應用程式開發的核心技能。

### 課程特色
- 🎯 **循序漸進**：從基礎概念到進階應用
- 💡 **實例驅動**：每個概念都有對應的 Demo 檔案
- 🚀 **專案導向**：三個完整專案實戰
- 📚 **完整文件**：詳細的學習指南和疑難排解

---

## 學習階段規劃

### 第一階段：SwiftUI 基礎概念 (1-2週)

#### 學習目標
- 理解 SwiftUI 的核心理念
- 掌握宣告式 UI 的概念
- 熟悉 Xcode 開發環境
- 學會使用 Preview 進行快速開發

#### 核心概念
- **SwiftUI 是什麼**：Apple 的現代 UI 框架
- **宣告式 UI**：描述 UI 應該是什麼樣子，而不是如何建立
- **View 協議**：所有 UI 元件的基礎
- **Preview**：即時預覽功能

#### 相關檔案
- `ContentView.swift` - 主要入口點和基礎結構

#### 重要語法說明
```swift
struct ContentView: View {
    var body: some View {
        // UI 內容
    }
}

#Preview {
    ContentView()
}
```

#### 常見錯誤
- 忘記遵循 View 協議
- body 屬性返回多個根視圖
- Preview 設定錯誤

#### 延伸練習
1. 修改 ContentView 顯示不同的文字
2. 嘗試添加不同的系統圖示
3. 實驗不同的 padding 值

---

### 第二階段：基礎元件學習 (2-3週)

#### 學習目標
- 掌握 SwiftUI 基礎 UI 元件
- 理解文字、圖片、按鈕的使用方法
- 學會基礎圖形和顏色系統
- 熟悉常用的視圖修飾器

#### 2.1 文字顯示與格式化

**檔案**：`Demo/Views/1_Primitive/Text_Demo.swift`

**學習重點**：
- Text 視圖的基本使用
- 字體、顏色、大小設定
- 文字修飾器的應用
- 多行文字處理

**核心語法**：
```swift
Text("Hello, SwiftUI!")
    .font(.title)
    .foregroundColor(.blue)
    .multilineTextAlignment(.center)
```

**常見錯誤**：
- 文字過長未設定換行
- 顏色設定語法錯誤
- 字體名稱拼寫錯誤

**練習任務**：
1. 建立不同樣式的標題文字
2. 實作漸層文字效果
3. 練習文字動畫

#### 2.2 圖片顯示與處理

**檔案**：`Demo/Views/1_Primitive/Image_Demo.swift`

**學習重點**：
- 系統圖示的使用 (SF Symbols)
- 自訂圖片的載入
- 圖片尺寸和比例調整
- 圖片修飾器應用

**核心語法**：
```swift
Image(systemName: "heart.fill")
    .resizable()
    .scaledToFit()
    .frame(width: 50, height: 50)
```

**常見錯誤**：
- 忘記使用 resizable()
- 圖片路徑錯誤
- 比例設定不當導致變形

**練習任務**：
1. 建立圖示集合
2. 實作圖片輪播效果
3. 練習圖片濾鏡應用

#### 2.3 按鈕互動

**檔案**：`Demo/Views/3_Control/Button_Demo.swift`

**學習重點**：
- 按鈕的建立和樣式設定
- 點擊事件處理
- 按鈕狀態管理
- 自訂按鈕樣式

**核心語法**：
```swift
Button("點我") {
    // 按鈕動作
}
.buttonStyle(.borderedProminent)
```

**常見錯誤**：
- 按鈕動作閉包語法錯誤
- 樣式設定位置錯誤
- 狀態更新問題

**練習任務**：
1. 建立不同樣式的按鈕
2. 實作計數器按鈕
3. 練習按鈕動畫效果

#### 2.4 基礎圖形

**檔案**：`Demo/Views/1_Primitive/Circle_Demo.swift`

**學習重點**：
- 基本圖形的使用 (Circle, Rectangle, RoundedRectangle)
- 圖形填充和邊框
- 圖形組合應用

**核心語法**：
```swift
Circle()
    .fill(.blue)
    .frame(width: 100, height: 100)
```

**練習任務**：
1. 建立幾何圖案
2. 實作圖形動畫
3. 練習圖形組合

#### 2.5 顏色系統

**檔案**：`Demo/Views/1_Primitive/Color_Demo.swift`

**學習重點**：
- SwiftUI 顏色系統
- 預定義顏色和自訂顏色
- 漸層效果
- 暗色模式適配

**核心語法**：
```swift
Color.blue
Color(red: 0.2, green: 0.4, blue: 0.8)
LinearGradient(colors: [.red, .blue], startPoint: .top, endPoint: .bottom)
```

**練習任務**：
1. 建立調色盤
2. 實作漸層背景
3. 練習暗色模式適配

---

### 第三階段：容器與佈局 (2-3週)

#### 學習目標
- 掌握 SwiftUI 佈局系統
- 理解容器視圖的使用方法
- 學會建立複雜的佈局結構
- 熟悉列表和滾動視圖

#### 3.1 垂直佈局 (VStack)

**檔案**：`Demo/Views/2_Container/VStack_Demo.swift`

**學習重點**：
- VStack 的基本使用
- 對齊方式設定
- 間距控制
- 嵌套佈局

**核心語法**：
```swift
VStack(alignment: .leading, spacing: 10) {
    Text("第一行")
    Text("第二行")
    Text("第三行")
}
```

**常見錯誤**：
- 超過 10 個子視圖限制
- 對齊設定錯誤
- 間距設定不當

**練習任務**：
1. 建立卡片佈局
2. 實作表單介面
3. 練習響應式佈局

#### 3.2 水平佈局 (HStack)

**檔案**：`Demo/Views/2_Container/HStack_Demo.swift`

**學習重點**：
- HStack 的基本使用
- 水平對齊設定
- 彈性空間使用
- 工具列佈局

**核心語法**：
```swift
HStack {
    Text("左側")
    Spacer()
    Text("右側")
}
```

**練習任務**：
1. 建立導航列
2. 實作標籤列
3. 練習響應式水平佈局

#### 3.3 層疊佈局 (ZStack)

**檔案**：`Demo/Views/2_Container/ZStack_Demo.swift`

**學習重點**：
- ZStack 的基本使用
- 層級順序控制
- 對齊方式設定
- 覆蓋效果實現

**核心語法**：
```swift
ZStack(alignment: .topLeading) {
    Rectangle().fill(.blue)
    Text("覆蓋文字")
}
```

**練習任務**：
1. 建立卡片背景效果
2. 實作徽章系統
3. 練習複雜層疊佈局

#### 3.4 列表顯示 (List)

**檔案**：`Demo/Views/2_Container/List_Demo.swift`

**學習重點**：
- List 的基本使用
- 動態列表建立
- 列表樣式設定
- 列表操作 (刪除、移動)

**核心語法**：
```swift
List {
    ForEach(items, id: \.self) { item in
        Text(item)
    }
    .onDelete(perform: deleteItems)
}
```

**練習任務**：
1. 建立聯絡人列表
2. 實作待辦事項清單
3. 練習列表搜尋功能

#### 3.5 滾動視圖 (ScrollView)

**檔案**：`Demo/Views/2_Container/ScrollView_Demo.swift`

**學習重點**：
- ScrollView 的基本使用
- 滾動方向設定
- 滾動指示器控制
- 無限滾動實現

**核心語法**：
```swift
ScrollView(.vertical, showsIndicators: false) {
    LazyVStack {
        ForEach(0..<100) { index in
            Text("項目 \(index)")
        }
    }
}
```

**練習任務**：
1. 建立圖片畫廊
2. 實作時間軸介面
3. 練習滾動動畫

#### 3.6 網格佈局 (Grid)

**檔案**：`Demo/Views/2_Container/Grid_Demo.swift`

**學習重點**：
- Grid 的基本使用
- LazyVGrid 和 LazyHGrid
- 網格項目配置
- 響應式網格

**核心語法**：
```swift
let columns = [
    GridItem(.adaptive(minimum: 80))
]

LazyVGrid(columns: columns) {
    ForEach(items, id: \.self) { item in
        Text(item)
    }
}
```

**練習任務**：
1. 建立相片集
2. 實作圖示網格
3. 練習動態網格佈局

---

### 第四階段：互動與狀態管理 (3-4週)

#### 學習目標
- 理解 SwiftUI 狀態管理機制
- 掌握資料綁定概念
- 學會處理使用者輸入
- 熟悉表單元件使用

#### 4.1 狀態管理 (@State)

**相關檔案**：所有互動元件 Demo

**學習重點**：
- @State 屬性包裝器
- 狀態變數的宣告和使用
- 狀態更新機制
- 狀態的生命週期

**核心語法**：
```swift
struct ContentView: View {
    @State private var count = 0
    
    var body: some View {
        Button("計數: \(count)") {
            count += 1
        }
    }
}
```

**常見錯誤**：
- 忘記使用 @State
- 狀態變數不是 private
- 狀態更新在錯誤的線程

#### 4.2 開關控制 (Toggle)

**檔案**：`Demo/Views/3_Control/Toggle_Demo.swift`

**學習重點**：
- Toggle 的基本使用
- 布林值綁定
- Toggle 樣式自訂
- 條件顯示應用

**核心語法**：
```swift
@State private var isOn = false

Toggle("開關", isOn: $isOn)
    .toggleStyle(.switch)
```

**練習任務**：
1. 建立設定頁面
2. 實作深色模式切換
3. 練習條件顯示邏輯

#### 4.3 文字輸入 (TextField)

**檔案**：`Demo/Views/3_Control/TextField_Demo.swift`

**學習重點**：
- TextField 的基本使用
- 文字綁定和驗證
- 鍵盤類型設定
- 輸入格式化

**核心語法**：
```swift
@State private var text = ""

TextField("請輸入文字", text: $text)
    .textFieldStyle(.roundedBorder)
```

**練習任務**：
1. 建立登入表單
2. 實作即時搜尋
3. 練習輸入驗證

#### 4.4 表單設計 (Form)

**檔案**：`Demo/Views/3_Control/Form_Demo.swift`

**學習重點**：
- Form 容器的使用
- 表單區段劃分
- 表單元件組合
- 表單驗證機制

**核心語法**：
```swift
Form {
    Section("個人資訊") {
        TextField("姓名", text: $name)
        TextField("Email", text: $email)
    }
    
    Section("偏好設定") {
        Toggle("推播通知", isOn: $notifications)
    }
}
```

**練習任務**：
1. 建立註冊表單
2. 實作問卷調查
3. 練習表單驗證

#### 4.5 資料綁定 (@Binding)

**相關檔案**：各種自訂元件

**學習重點**：
- @Binding 屬性包裝器
- 雙向資料綁定
- 父子元件通信
- 自訂綁定建立

**核心語法**：
```swift
struct CustomToggle: View {
    @Binding var isOn: Bool
    
    var body: some View {
        Button(isOn ? "開" : "關") {
            isOn.toggle()
        }
    }
}
```

#### 4.6 手勢互動

**檔案**：
- `Demo/ViewModifiers/Gestures/Tap_Demo.swift`
- `Demo/ViewModifiers/Gestures/Drag_Demo.swift`

**學習重點**：
- 點擊手勢處理
- 拖拽手勢實現
- 手勢組合使用
- 手勢狀態管理

**核心語法**：
```swift
.onTapGesture {
    // 點擊處理
}
.gesture(
    DragGesture()
        .onChanged { value in
            // 拖拽處理
        }
)
```

**練習任務**：
1. 建立可拖拽元件
2. 實作手勢密碼
3. 練習複合手勢

#### 4.7 資料追蹤專案

**檔案**：`Demo/DataFlow/DrinkTracker.swift`

**專案特色**：
- 完整的狀態管理範例
- 資料持久化基礎
- 使用者介面設計
- 互動邏輯實現

**學習重點**：
- 複雜狀態管理
- 資料模型設計
- 使用者體驗優化

---

### 第五階段：進階功能 (3-4週)

#### 學習目標
- 掌握動畫和轉場效果
- 理解導航系統架構
- 學會模態視圖使用
- 熟悉觀察者模式和環境值

#### 5.1 動畫效果

**檔案**：
- `Demo/Animation/SimpleAnimation.swift`
- `Demo/Animation/TextAnimationView.swift`

**學習重點**：
- 隱式動畫 (.animation)
- 顯式動畫 (withAnimation)
- 轉場動畫 (.transition)
- 自訂動畫曲線

**核心語法**：
```swift
@State private var scale = 1.0

Circle()
    .scaleEffect(scale)
    .animation(.easeInOut(duration: 1), value: scale)

Button("動畫") {
    withAnimation {
        scale = scale == 1.0 ? 1.5 : 1.0
    }
}
```

**練習任務**：
1. 建立載入動畫
2. 實作頁面轉場
3. 練習物理動畫

#### 5.2 導航系統

**檔案**：`Demo/Navigation/NavigationStack_Demo.swift`

**學習重點**：
- NavigationStack 的使用
- 導航路徑管理
- 導航列自訂
- 深層連結處理

**核心語法**：
```swift
NavigationStack {
    List {
        NavigationLink("詳細頁面", destination: DetailView())
    }
    .navigationTitle("主頁面")
}
```

**練習任務**：
1. 建立多層級導航
2. 實作搜尋導航
3. 練習程式化導航

#### 5.3 模態視圖

**檔案**：
- `Demo/Navigation/Sheet_Demo.swift`
- `Demo/Navigation/Popover_Demo.swift`

**學習重點**：
- Sheet 模態視圖
- Popover 彈出視圖
- 模態視圖數據傳遞
- 關閉邏輯處理

**核心語法**：
```swift
@State private var showingSheet = false

Button("顯示 Sheet") {
    showingSheet = true
}
.sheet(isPresented: $showingSheet) {
    SheetView()
}
```

**練習任務**：
1. 建立設定頁面
2. 實作圖片選擇器
3. 練習模態導航

#### 5.4 分頁介面

**檔案**：`Demo/Navigation/TabView_Demo.swift`

**學習重點**：
- TabView 基本使用
- 標籤自訂
- 頁面切換動畫
- 標籤徽章系統

**核心語法**：
```swift
TabView {
    ContentView()
        .tabItem {
            Image(systemName: "house")
            Text("首頁")
        }
    
    SettingsView()
        .tabItem {
            Image(systemName: "gear")
            Text("設定")
        }
}
```

**練習任務**：
1. 建立多分頁應用
2. 實作動態標籤
3. 練習標籤狀態同步

#### 5.5 觀察者模式

**檔案**：
- `Demo/Observation/Counter.swift`
- `Demo/Observation/CounterEnvironment.swift`

**學習重點**：
- @Observable 宏的使用
- ObservableObject 協議
- @StateObject 和 @ObservedObject
- 響應式程式設計

**核心語法**：
```swift
@Observable
class Counter {
    var count = 0
    
    func increment() {
        count += 1
    }
}

struct ContentView: View {
    @State private var counter = Counter()
    
    var body: some View {
        Text("計數: \(counter.count)")
        Button("增加") {
            counter.increment()
        }
    }
}
```

#### 5.6 環境值系統

**檔案**：`Demo/DataFlow/Environment_Demo.swift`

**學習重點**：
- Environment 系統概念
- 自訂環境值
- 環境值注入和讀取
- 全域狀態管理

**核心語法**：
```swift
@Environment(\.colorScheme) var colorScheme

Text("當前模式: \(colorScheme == .dark ? "深色" : "淺色")")
```

**練習任務**：
1. 建立主題系統
2. 實作語言切換
3. 練習全域狀態

---

### 第六階段：實戰專案 (4-6週)

#### 專案一：MoodTracker - 情緒追蹤器

**檔案**：
- `MoodTracker/MoodTracker.swift`
- `MoodTracker/EmojiView.swift`

**專案特色**：
- 情緒記錄和追蹤
- 資料視覺化
- 使用者體驗設計
- 本地資料儲存

**學習重點**：
- 完整應用架構
- 資料模型設計
- 使用者介面設計
- 狀態管理最佳實務

**開發任務**：
1. 分析現有程式碼結構
2. 擴展功能需求
3. 優化使用者體驗
4. 添加資料持久化

#### 專案二：TaskManager - 任務管理器

**檔案結構**：
```
TaskManager/
├── Screens/
│   ├── MyListsScreen.swift
│   ├── DetailScreen.swift
│   └── AddListScreen.swift
└── Views/
    ├── MyListsView.swift
    ├── QuickActionsView.swift
    ├── StatusCard.swift
    ├── BottomView.swift
    └── MyListRow.swift
```

**專案特色**：
- 多層級導航結構
- 複雜狀態管理
- 資料持久化
- 使用者自訂功能

**學習重點**：
- MVVM 架構模式
- 導航流程設計
- 資料庫整合
- 效能優化

**開發任務**：
1. 理解專案架構
2. 實現核心功能
3. 添加進階特性
4. 優化效能表現

#### 專案三：TheOneThing - 專注任務應用

**檔案**：
- `TheOneThing/ThingsListScreen.swift`
- `TheOneThing/TheOneThing.html` (參考文件)

**專案特色**：
- 極簡設計理念
- 專注力管理
- 時間追蹤功能
- 習慣養成支援

**學習重點**：
- 設計原則應用
- 時間管理邏輯
- 通知系統整合
- 資料分析功能

**開發任務**：
1. 實現核心專注功能
2. 添加時間追蹤
3. 整合通知系統
4. 建立統計報告

---

## 學習路徑建議

### 每日學習計劃

#### 第一階段 (1-2週)
**第1-3天：SwiftUI 基礎**
- 閱讀 SwiftUI 概念文件
- 執行 ContentView.swift
- 實驗 Preview 功能
- 完成基礎練習

**第4-7天：深化理解**
- 研究 View 協議
- 練習宣告式 UI 思維
- 建立第一個自訂視圖
- 解決常見問題

**第8-14天：鞏固基礎**
- 復習核心概念
- 完成延伸練習
- 參與社群討論
- 準備進入下一階段

#### 第二階段 (2-3週)
**每日安排**：
- 學習一個新元件 (30分鐘)
- 實作相關 Demo (45分鐘)
- 完成練習任務 (30分鐘)
- 記錄學習筆記 (15分鐘)

**週末安排**：
- 復習本週學習內容
- 完成階段性專案
- 解決遇到的問題
- 規劃下週學習

### 實作練習建議

#### 基礎練習
1. **Hello World 變化版**
   - 建立個人化歡迎頁面
   - 使用不同字體和顏色
   - 添加背景圖片

2. **簡單計算器**
   - 使用按鈕和文字顯示
   - 實現基本運算邏輯
   - 練習狀態管理

3. **個人名片**
   - 組合文字、圖片、按鈕
   - 練習佈局技巧
   - 添加聯絡功能

#### 進階練習
1. **天氣應用**
   - 整合多種 UI 元件
   - 實現資料顯示
   - 添加動畫效果

2. **購物清單**
   - 使用列表和表單
   - 實現增刪改查
   - 練習狀態同步

3. **圖片瀏覽器**
   - 使用網格佈局
   - 實現圖片預覽
   - 添加搜尋功能

### 檢核點設計

#### 第一階段檢核點
**知識檢核**：
- [ ] 能解釋 SwiftUI 和 UIKit 的差異
- [ ] 理解宣告式 UI 的概念
- [ ] 熟悉 View 協議的使用
- [ ] 掌握 Preview 的基本操作

**技能檢核**：
- [ ] 能建立基本的 SwiftUI 視圖
- [ ] 能使用 Xcode Preview 功能
- [ ] 能解決基本的編譯錯誤
- [ ] 能完成指定的練習任務

#### 第二階段檢核點
**知識檢核**：
- [ ] 熟悉所有基礎 UI 元件
- [ ] 理解修飾器的作用機制
- [ ] 掌握顏色和圖片系統
- [ ] 了解響應式設計概念

**技能檢核**：
- [ ] 能建立複雜的 UI 介面
- [ ] 能處理使用者互動
- [ ] 能解決佈局問題
- [ ] 能完成小型專案

### 疑難排解指南

#### 常見問題與解決方案

**編譯錯誤**：
1. **"Cannot find 'XXX' in scope"**
   - 檢查變數名稱拼寫
   - 確認 import 語句
   - 檢查作用域範圍

2. **"Type 'XXX' does not conform to protocol 'View'"**
   - 確保 body 屬性存在
   - 檢查 body 返回類型
   - 確認 View 協議遵循

3. **"Function declares an opaque return type"**
   - 使用 some View 作為返回類型
   - 確保所有路徑都返回 View
   - 檢查條件語句結構

**Runtime 錯誤**：
1. **Preview 無法載入**
   - 檢查 Preview 語法
   - 確認相依項目
   - 重新啟動 Xcode

2. **狀態更新無效**
   - 確認使用 @State
   - 檢查更新線程
   - 驗證綁定語法

**效能問題**：
1. **滾動卡頓**
   - 使用 LazyVStack/LazyHStack
   - 優化圖片載入
   - 減少複雜計算

2. **記憶體洩漏**
   - 檢查強引用循環
   - 正確使用 weak/unowned
   - 清理觀察者

#### 除錯技巧

**使用 Debug 工具**：
```swift
.onAppear {
    print("視圖出現")
}
.onDisappear {
    print("視圖消失")
}
```

**視覺化除錯**：
```swift
.border(.red, width: 1) // 顯示邊界
.background(.yellow)    // 顯示背景區域
```

**效能監控**：
```swift
.onReceive(timer) { _ in
    print("Timer tick: \(Date())")
}
```

---

## 補充學習資源

### Apple 官方文件

#### 必讀文件
1. **[SwiftUI Overview](https://developer.apple.com/xcode/swiftui/)**
   - SwiftUI 官方介紹
   - 核心概念解釋
   - 最新功能更新

2. **[SwiftUI Tutorials](https://developer.apple.com/tutorials/swiftui)**
   - 官方入門教學
   - 逐步指導專案
   - 最佳實務範例

3. **[Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/)**
   - iOS 設計規範
   - 使用者體驗指導
   - 介面設計原則

#### API 參考文件
1. **[SwiftUI Framework](https://developer.apple.com/documentation/swiftui)**
   - 完整 API 文件
   - 詳細使用說明
   - 程式碼範例

2. **[Combine Framework](https://developer.apple.com/documentation/combine)**
   - 響應式程式設計
   - 資料流管理
   - 非同步處理

### 相關概念解釋

#### 宣告式 UI vs 命令式 UI
**宣告式 UI (SwiftUI)**：
- 描述 UI 應該是什麼樣子
- 自動處理狀態變化
- 簡潔的程式碼結構

```swift
// SwiftUI - 宣告式
Text("計數: \(count)")
    .foregroundColor(count > 10 ? .red : .black)
```

**命令式 UI (UIKit)**：
- 描述如何建立和更新 UI
- 手動處理狀態變化
- 更多的程式碼和邏輯

```swift
// UIKit - 命令式
label.text = "計數: \(count)"
if count > 10 {
    label.textColor = .red
} else {
    label.textColor = .black
}
```

#### MVVM 架構模式
**Model-View-ViewModel** 是 SwiftUI 推薦的架構模式：

```swift
// Model
struct Task {
    let id: UUID
    var title: String
    var isCompleted: Bool
}

// ViewModel
@Observable
class TaskViewModel {
    var tasks: [Task] = []
    
    func addTask(_ title: String) {
        let task = Task(id: UUID(), title: title, isCompleted: false)
        tasks.append(task)
    }
}

// View
struct TaskListView: View {
    @State private var viewModel = TaskViewModel()
    
    var body: some View {
        List(viewModel.tasks, id: \.id) { task in
            Text(task.title)
        }
    }
}
```

### 實用工具介紹

#### 開發工具
1. **SF Symbols App**
   - Apple 官方圖示庫
   - 超過 4000 個系統圖示
   - 支援多種樣式和變化

2. **Simulator**
   - iOS 模擬器
   - 多種裝置測試
   - 即時預覽功能

3. **SwiftUI Instruments**
   - 效能分析工具
   - 記憶體使用監控
   - 動畫效能檢測

#### 第三方資源
1. **Hacking with Swift**
   - 詳細的 SwiftUI 教學
   - 豐富的範例程式碼
   - 社群問答支援

2. **SwiftUI Lab**
   - 進階技巧分享
   - 實驗性功能探索
   - 深度技術分析

3. **100 Days of SwiftUI**
   - 結構化學習計劃
   - 每日挑戰任務
   - 完整專案實作

### 社群資源推薦

#### 線上社群
1. **Swift.org Forums**
   - 官方技術討論區
   - 專家問答平台
   - 最新資訊發布

2. **Stack Overflow**
   - 程式問題解答
   - 豐富的程式碼範例
   - 社群評分機制

3. **Reddit r/SwiftUI**
   - 非正式討論交流
   - 專案展示平台
   - 學習心得分享

#### 中文資源
1. **SwiftGG**
   - Swift 中文翻譯組
   - 優質技術文章
   - 活躍的中文社群

2. **iOS 開發者社群**
   - 在地化技術交流
   - 定期聚會活動
   - 求職就業資訊

---

## 課程評估與認證

### 學習成果評估

#### 階段性評估
每個學習階段結束後進行評估：
1. **知識測驗** (30%)
   - 概念理解測試
   - 語法應用檢核
   - 最佳實務判斷

2. **實作作業** (50%)
   - 指定功能實現
   - 程式碼品質評估
   - 創意和創新評分

3. **專案展示** (20%)
   - 完整專案呈現
   - 技術難度評估
   - 問題解決能力

#### 最終評估
課程結束時的綜合評估：
1. **三大專案完成度** (60%)
   - MoodTracker 專案
   - TaskManager 專案
   - TheOneThing 專案

2. **技術深度展示** (25%)
   - 自選進階功能實現
   - 效能優化展示
   - 原創性解決方案

3. **學習歷程記錄** (15%)
   - 學習筆記品質
   - 社群參與程度
   - 持續學習態度

### 認證路徑

#### 基礎認證
完成前三個階段的學習者可獲得：
- **SwiftUI 基礎開發者認證**
- 證明具備基本 UI 開發能力
- 可勝任簡單應用程式開發

#### 進階認證
完成前五個階段的學習者可獲得：
- **SwiftUI 進階開發者認證**
- 證明具備複雜應用開發能力
- 可勝任商業應用程式開發

#### 專家認證
完成所有階段並展示優秀專案的學習者可獲得：
- **SwiftUI 專案專家認證**
- 證明具備架構設計能力
- 可勝任技術領導職位

---

## 結語

這份 SwiftUI 課程設計提供了從零基礎到專案實戰的完整學習路徑。透過循序漸進的階段安排、豐富的實作練習，以及三個完整的專案實戰，學習者將能夠：

🎯 **掌握核心技能**
- 熟練使用 SwiftUI 建立現代化 iOS 應用
- 理解宣告式 UI 程式設計思維
- 具備完整的應用開發能力

🚀 **具備實戰經驗**
- 完成三個不同類型的專案
- 累積豐富的開發經驗
- 建立個人作品集

📈 **持續成長能力**
- 養成自主學習習慣
- 具備問題解決能力
- 跟上技術發展趨勢

**開始您的 SwiftUI 學習之旅，從基礎概念到專業開發，一步一步實現您的 iOS 開發夢想！**

---

*最後更新：2024年7月*
*課程設計者：SwiftUI 教學團隊*
*聯絡方式：course@swiftui-demo.com*