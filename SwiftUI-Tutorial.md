# SwiftUI 完整教學指南

## 課程介紹與目標

歡迎來到 SwiftUI 完整教學課程！本教學將帶領您從零開始，循序漸進地學習 SwiftUI 開發技能。

### 學習目標
- 掌握 SwiftUI 的核心概念和語法
- 熟練使用各種 UI 元件和佈局容器
- 理解狀態管理和資料流
- 能夠開發完整的 iOS 應用程式
- 具備解決常見開發問題的能力

### 適合對象
- SwiftUI 初學者
- 具備基礎 Swift 程式語言知識
- 想要系統化學習 SwiftUI 的開發者

## 學習前準備

### 開發環境需求
- macOS 14.0 或更新版本
- Xcode 15.0 或更新版本
- 基本的 Swift 語言知識
- iOS 17.0 模擬器或實體設備

### 推薦學習方式
1. 按照六個階段順序學習
2. 實際操作每個範例程式碼
3. 完成每階段的實作練習
4. 參與社群討論和問答

---

## 六階段完整課程架構

### 第一階段：SwiftUI 基礎概念 (1-2週)
**目標：建立 SwiftUI 基礎認知**

#### 學習內容
- SwiftUI 簡介與特色
- 宣告式 UI vs 命令式 UI
- View 協議的核心概念
- #Preview 的使用方法
- 基礎語法入門

#### 對應檔案
- `ContentView.swift`

---

### 第二階段：基礎元件學習 (2-3週)
**目標：掌握基本 UI 元件的使用**

#### 學習內容
- **Text**：文字顯示與格式化
- **Image**：圖片顯示與處理 (SF Symbols, 自定義圖片)
- **Button**：按鈕互動與樣式
- **Circle**：基礎圖形繪製
- **Color**：顏色系統與自定義顏色

#### 對應檔案
- `Demo/Views/1_Primitive/Text_Demo.swift`
- `Demo/Views/1_Primitive/Image_Demo.swift`
- `Demo/Views/3_Control/Button_Demo.swift`
- `Demo/Views/1_Primitive/Circle_Demo.swift`
- `Demo/Views/1_Primitive/Color_Demo.swift`

---

### 第三階段：容器與佈局 (2-3週)
**目標：學會組織和排列 UI 元件**

#### 學習內容
- **VStack**：垂直堆疊佈局
- **HStack**：水平堆疊佈局
- **ZStack**：層疊佈局
- **List**：列表顯示
- **ScrollView**：滾動視圖
- **Grid**：網格佈局
- 佈局修飾器 (padding, frame, spacing)

#### 對應檔案
- `Demo/Views/2_Container/VStack_Demo.swift`
- `Demo/Views/2_Container/HStack_Demo.swift`
- `Demo/Views/2_Container/ZStack_Demo.swift`
- `Demo/Views/2_Container/List_Demo.swift`
- `Demo/Views/2_Container/ScrollView_Demo.swift`
- `Demo/Views/2_Container/Grid_Demo.swift`

---

### 第四階段：互動與狀態管理 (3-4週)
**目標：實現使用者互動和狀態管理**

#### 學習內容
- **@State**：狀態管理基礎
- **@Binding**：資料綁定概念
- **TextField**：文字輸入
- **Toggle**：開關控制
- **Form**：表單設計
- 手勢處理 (Tap, Drag)

#### 對應檔案
- `Demo/Views/3_Control/Toggle_Demo.swift`
- `Demo/Views/3_Control/TextField_Demo.swift`
- `Demo/Views/3_Control/Form_Demo.swift`
- `Demo/DataFlow/DrinkTracker.swift`
- `Demo/ViewModifiers/Gestures/Tap_Demo.swift`
- `Demo/ViewModifiers/Gestures/Drag_Demo.swift`

---

### 第五階段：進階功能 (3-4週)
**目標：掌握進階 SwiftUI 特性**

#### 學習內容
- **Animation**：動畫效果與類型
- **NavigationStack**：導航系統
- **Sheet**：模態視圖
- **Popover**：彈出視圖
- **TabView**：分頁介面
- **@Observable**：觀察者模式
- **Environment**：環境值系統

#### 對應檔案
- `Demo/Animation/SimpleAnimation.swift`
- `Demo/Animation/TextAnimationView.swift`
- `Demo/Navigation/NavigationStack_Demo.swift`
- `Demo/Navigation/Sheet_Demo.swift`
- `Demo/Navigation/Popover_Demo.swift`
- `Demo/Navigation/TabView_Demo.swift`
- `Demo/Observation/Counter.swift`
- `Demo/Observation/CounterEnvironment.swift`
- `Demo/DataFlow/Environment_Demo.swift`

---

### 第六階段：實戰專案 (4-6週)
**目標：開發完整的 iOS 應用程式**

#### 學習內容
- **MoodTracker**：情緒追蹤器實作
- **TaskManager**：任務管理器開發
- **TheOneThing**：專注任務應用
- 專案架構設計
- 程式碼組織與最佳實踐

#### 對應檔案
- `MoodTracker/` 資料夾
- `TaskManager/` 資料夾
- `TheOneThing/` 資料夾

---

## 詳細教學內容

## 第一階段：SwiftUI 基礎概念

### 1.1 SwiftUI 簡介與特色

SwiftUI 是 Apple 推出的宣告式 UI 框架，具有以下特色：

- **宣告式語法**：描述 UI 的外觀和行為，而非如何建構
- **即時預覽**：透過 #Preview 即時查看設計效果
- **跨平台**：同一套程式碼可用於 iOS、macOS、watchOS、tvOS
- **自動適應**：自動適應不同螢幕尺寸和方向

### 1.2 宣告式 UI vs 命令式 UI

#### 命令式 UI (UIKit)
```swift
// UIKit 方式 - 告訴系統"如何做"
let label = UILabel()
label.text = "Hello, World!"
label.textColor = .blue
view.addSubview(label)
```

#### 宣告式 UI (SwiftUI)
```swift
// SwiftUI 方式 - 告訴系統"要什麼"
Text("Hello, World!")
    .foregroundColor(.blue)
```

### 1.3 View 協議的核心概念

在 SwiftUI 中，所有 UI 元件都遵循 `View` 協議：

```swift
protocol View {
    associatedtype Body : View
    var body: Self.Body { get }
}
```

### 1.4 ContentView.swift 詳解

**檔案位置**：`SwiftUIDemo/ContentView.swift`

#### 學習目標
- 理解 SwiftUI 專案的基本結構
- 掌握 View 協議的實作方式
- 學會使用 #Preview

#### 程式碼解析

```swift
import SwiftUI

struct ContentView: View {
    var body: some View {
        /// Refer to the examples in ``VStack_Demo``
        VStack {
            /// Refer to the examples in ``Image_Demo``
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            /// Refer to the examples in ``Text_Demo``
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
```

#### 重要語法說明
- `struct ContentView: View`：宣告一個遵循 View 協議的結構
- `var body: some View`：定義 View 的內容
- `VStack`：垂直堆疊容器
- `.padding()`：添加內邊距修飾器
- `#Preview`：提供即時預覽功能

#### 常見錯誤
1. **忘記遵循 View 協議**
   ```swift
   // ❌ 錯誤
   struct ContentView {
   
   // ✅ 正確
   struct ContentView: View {
   ```

2. **忘記實作 body 屬性**
   ```swift
   // ❌ 錯誤 - 缺少 body
   struct ContentView: View {
   }
   
   // ✅ 正確
   struct ContentView: View {
       var body: some View {
           Text("Hello")
       }
   }
   ```

#### 實作練習
1. 修改 Text 顯示內容為你的名字
2. 更換 Image 的 SF Symbol
3. 嘗試添加不同的修飾器
4. 建立自己的第一個 View

---

## 第二階段：基礎元件學習

### 2.1 Text - 文字顯示與格式化

**檔案位置**：`SwiftUIDemo/Demo/Views/1_Primitive/Text_Demo.swift`

#### 學習目標
- 掌握 Text 元件的基本用法
- 學會文字格式化和樣式設定
- 理解 Markdown 和字串插值的使用

#### 核心概念
Text 是 SwiftUI 中最基本的文字顯示元件，支援豐富的格式化選項。

#### 程式碼解析

##### 基礎用法
```swift
Text("Hello, World!")
    .padding()
    .background { Color.accentColor }
```

##### 字體設定
```swift
Text("Learn SwiftUI")
    .font(.largeTitle)
    .fontDesign(.serif)
```

##### Markdown 支援
```swift
Text("Visit **Apple** [website](https://www.apple.com)")
```

##### 字串插值
```swift
Text("""
Showtimes: \(Text("Friday").bold()) \
and \(Text("Saturday").bold()) \
\(Image(systemName: "sun.min.fill"))
""")
```

##### 複數形式處理
```swift
let count = 1
Text("Sold ^[\(count) tickets](inflect: true)")
```

##### 格式化樣式
```swift
let genres = ["action", "comedy", "literature", "music"]
Text("Genres: \(genres, format: .list(type: .and))")

let distance = Measurement(value: 25.4, unit: UnitLength.meters)
Text("Distance: \(distance, format: .measurement(width: .wide))")

let price = 9.99
Text("Price: \(price, format: .currency(code: "USD"))")
```

#### 重要語法
- `.font()`：設定字體大小和樣式
- `.fontDesign()`：設定字體設計風格
- `.foregroundStyle()`：設定文字顏色
- `.bold()`、`.italic()`：文字樣式修飾器
- `^[text](inflect: true)`：自動複數形式處理

#### 常見錯誤
1. **字串插值語法錯誤**
   ```swift
   // ❌ 錯誤
   Text("Count: " + count)
   
   // ✅ 正確
   Text("Count: \(count)")
   ```

2. **忘記處理多行文字的對齊**
   ```swift
   // ❌ 可能造成佈局問題
   Text("很長的文字內容...")
   
   // ✅ 設定適當的對齊方式
   Text("很長的文字內容...")
       .multilineTextAlignment(.leading)
   ```

#### 實作練習
1. 建立一個自我介紹頁面，使用不同的字體樣式
2. 實作一個格式化數據顯示介面
3. 練習使用 Markdown 語法建立富文本
4. 建立支援多語言的計數器文字

### 2.2 Image - 圖片顯示與處理

**檔案位置**：`SwiftUIDemo/Demo/Views/1_Primitive/Image_Demo.swift`

#### 學習目標
- 掌握不同類型圖片的顯示方法
- 學會調整圖片大小和外觀
- 理解 SF Symbols 的使用

#### 核心概念
Image 元件用於顯示圖片，支援系統圖示 (SF Symbols)、App Bundle 中的圖片和網路圖片。

#### 程式碼解析

```swift
// SF Symbols
Image(systemName: "globe")
    .imageScale(.large)
    .foregroundStyle(.tint)

// 調整大小
Image(systemName: "heart.fill")
    .resizable()
    .aspectRatio(contentMode: .fit)
    .frame(width: 50, height: 50)

// 顏色設定
Image(systemName: "star")
    .foregroundColor(.yellow)
```

#### 重要語法
- `Image(systemName:)`：載入 SF Symbols
- `Image(_:)`：載入 App Bundle 中的圖片
- `.resizable()`：讓圖片可調整大小
- `.aspectRatio(contentMode:)`：設定長寬比模式
- `.imageScale()`：設定圖片縮放比例

#### 常見錯誤
1. **忘記設定 resizable**
   ```swift
   // ❌ 圖片無法調整大小
   Image("myImage")
       .frame(width: 100, height: 100)
   
   // ✅ 正確做法
   Image("myImage")
       .resizable()
       .frame(width: 100, height: 100)
   ```

#### 實作練習
1. 建立一個圖片畫廊介面
2. 實作圖片縮放功能
3. 使用 SF Symbols 建立圖示系統

### 2.3 Button - 按鈕互動與樣式

**檔案位置**：`SwiftUIDemo/Demo/Views/3_Control/Button_Demo.swift`

#### 學習目標
- 掌握 Button 的基本用法和事件處理
- 學會自定義按鈕樣式
- 理解按鈕的不同狀態和回饋

#### 核心概念
Button 是 SwiftUI 中處理使用者點擊操作的主要元件。

#### 程式碼解析

```swift
// 基本按鈕
Button("點擊我") {
    print("按鈕被點擊了")
}

// 自定義樣式
Button(action: {
    // 處理點擊事件
}) {
    Text("自定義按鈕")
        .padding()
        .background(Color.blue)
        .foregroundColor(.white)
        .cornerRadius(8)
}

// 使用按鈕樣式
Button("主要按鈕") {
    // 動作
}
.buttonStyle(.borderedProminent)
```

#### 重要語法
- `Button(_:action:)`：建立按鈕的基本語法
- `.buttonStyle()`：設定按鈕樣式
- `.disabled()`：停用按鈕

#### 實作練習
1. 建立不同樣式的按鈕集合
2. 實作計數器應用
3. 建立自定義按鈕樣式

### 2.4 Circle - 基礎圖形繪製

**檔案位置**：`SwiftUIDemo/Demo/Views/1_Primitive/Circle_Demo.swift`

#### 學習目標
- 掌握基本圖形的繪製
- 學會設定圖形顏色和邊框
- 理解圖形的修飾器使用

#### 實作練習
1. 建立不同顏色和大小的圓形
2. 實作進度指示器
3. 建立圖形組合介面

### 2.5 Color - 顏色系統與自定義顏色

**檔案位置**：`SwiftUIDemo/Demo/Views/1_Primitive/Color_Demo.swift`

#### 學習目標
- 掌握 SwiftUI 顏色系統
- 學會使用系統顏色和自定義顏色
- 理解動態顏色和主題適應

#### 實作練習
1. 建立調色盤介面
2. 實作主題切換功能
3. 建立漸變色背景

---

## 第三階段：容器與佈局

### 3.1 VStack - 垂直堆疊佈局

**檔案位置**：`SwiftUIDemo/Demo/Views/2_Container/VStack_Demo.swift`

#### 學習目標
- 掌握垂直佈局的基本原理
- 學會控制元件間距和對齊方式
- 理解 VStack 的參數設定

#### 核心概念
VStack 將子視圖垂直排列，是最常用的佈局容器之一。

#### 程式碼解析

```swift
VStack {
    Text("Movies of the Year")
        .font(.headline)
    Text("Top picks from our collection")
        .font(.subheadline)
}
```

#### 進階用法

```swift
VStack(alignment: .leading, spacing: 16) {
    Text("標題")
    Text("副標題")
    Text("內容")
}
```

#### 重要語法
- `VStack(alignment:spacing:)`：設定對齊方式和間距
- `.alignment`：`.leading`、`.center`、`.trailing`
- `spacing`：元件間的距離

#### 常見錯誤
1. **內容超出螢幕範圍**
   ```swift
   // ❌ 可能造成內容被截斷
   VStack {
       // 太多內容
   }
   
   // ✅ 使用 ScrollView 包裹
   ScrollView {
       VStack {
           // 內容
       }
   }
   ```

#### 實作練習
1. 建立文章閱讀介面
2. 實作設定頁面佈局
3. 建立卡片式介面

### 3.2 HStack - 水平堆疊佈局

**檔案位置**：`SwiftUIDemo/Demo/Views/2_Container/HStack_Demo.swift`

#### 學習目標
- 掌握水平佈局的使用方法
- 學會元件的水平對齊和分佈
- 理解空間分配原理

#### 實作練習
1. 建立導航欄介面
2. 實作按鈕組佈局
3. 建立資訊卡片

### 3.3 ZStack - 層疊佈局

**檔案位置**：`SwiftUIDemo/Demo/Views/2_Container/ZStack_Demo.swift`

#### 學習目標
- 掌握層疊佈局的概念
- 學會控制視圖的層次順序
- 理解 ZStack 的對齊選項

#### 實作練習
1. 建立浮動按鈕介面
2. 實作圖片覆蓋文字效果
3. 建立載入指示器

### 3.4 List - 列表顯示

**檔案位置**：`SwiftUIDemo/Demo/Views/2_Container/List_Demo.swift`

#### 學習目標
- 掌握列表的基本用法
- 學會動態列表和靜態列表
- 理解列表的自定義和樣式設定

#### 實作練習
1. 建立聯絡人列表
2. 實作設定選項列表
3. 建立分組列表介面

### 3.5 ScrollView - 滾動視圖

**檔案位置**：`SwiftUIDemo/Demo/Views/2_Container/ScrollView_Demo.swift`

#### 學習目標
- 掌握滾動視圖的使用
- 學會控制滾動方向和行為
- 理解滾動視圖與其他佈局的組合

#### 實作練習
1. 建立圖片輪播介面
2. 實作長文章閱讀器
3. 建立水平滾動選單

### 3.6 Grid - 網格佈局

**檔案位置**：`SwiftUIDemo/Demo/Views/2_Container/Grid_Demo.swift`

#### 學習目標
- 掌握網格佈局的現代用法
- 學會響應式網格設計
- 理解網格與 LazyVGrid/LazyHGrid 的差異

#### 實作練習
1. 建立相簿網格介面
2. 實作商品展示網格
3. 建立響應式佈局

---

## 第四階段：互動與狀態管理

### 4.1 狀態管理基礎 - @State

#### 學習目標
- 理解 SwiftUI 中的狀態管理概念
- 掌握 @State 的使用方法
- 學會狀態變化與 UI 更新的關係

#### 核心概念
@State 是 SwiftUI 中最基本的狀態管理工具，用於管理 View 內部的可變狀態。

#### 基本語法
```swift
struct CounterView: View {
    @State private var count = 0
    
    var body: some View {
        VStack {
            Text("計數：\(count)")
            Button("增加") {
                count += 1
            }
        }
    }
}
```

### 4.2 Toggle - 開關控制

**檔案位置**：`SwiftUIDemo/Demo/Views/3_Control/Toggle_Demo.swift`

#### 學習目標
- 掌握 Toggle 的基本用法
- 學會不同的 Toggle 樣式
- 理解布林值綁定

#### 程式碼解析

```swift
struct Toggle_Demo: View {
    @State private var isOn = false

    var body: some View {
        Text("Toggled? \(isOn)")

        Toggle("Toggle", isOn: $isOn)

        Toggle("Toggle", isOn: $isOn)
            .toggleStyle(.button)
    }
}
```

#### 重要語法
- `Toggle(_:isOn:)`：建立開關控制項
- `$isOn`：雙向綁定語法
- `.toggleStyle()`：設定開關樣式

#### 常見錯誤
1. **忘記使用綁定語法**
   ```swift
   // ❌ 錯誤 - 缺少 $ 符號
   Toggle("開關", isOn: isOn)
   
   // ✅ 正確
   Toggle("開關", isOn: $isOn)
   ```

#### 實作練習
1. 建立設定開關頁面
2. 實作主題切換功能
3. 建立功能開關集合

### 4.3 TextField - 文字輸入

**檔案位置**：`SwiftUIDemo/Demo/Views/3_Control/TextField_Demo.swift`

#### 學習目標
- 掌握文字輸入的處理
- 學會輸入驗證和格式化
- 理解鍵盤處理和輸入焦點

#### 實作練習
1. 建立註冊表單
2. 實作搜尋介面
3. 建立即時驗證輸入

### 4.4 Form - 表單設計

**檔案位置**：`SwiftUIDemo/Demo/Views/3_Control/Form_Demo.swift`

#### 學習目標
- 掌握表單的建立和組織
- 學會表單驗證和提交處理
- 理解表單的最佳實踐

#### 實作練習
1. 建立個人資料編輯表單
2. 實作調查問卷介面
3. 建立多步驟表單

### 4.5 資料綁定 - @Binding

#### 學習目標
- 理解父子元件間的資料傳遞
- 掌握 @Binding 的使用場景
- 學會建立可重用的子元件

#### 核心概念
@Binding 用於在父子元件間共享可變狀態。

#### 程式碼解析

```swift
struct DrinkTracker: View {
    @State private var waterCount: Int = 0
    @State private var coffeeCount: Int = 0
    @State private var beerCount: Int = 0

    private var totalCount: Int {
        waterCount + coffeeCount + beerCount
    }

    var body: some View {
        VStack {
            Text("Total number of drinks: \(totalCount)")
            WaterTracker(count: $waterCount)
            CoffeeTracker(count: $coffeeCount)
            BeerTracker(count: $beerCount)
        }
        .padding()
    }
}
```

### 4.6 手勢處理

#### Tap_Demo - 點擊手勢

**檔案位置**：`SwiftUIDemo/Demo/ViewModifiers/Gestures/Tap_Demo.swift`

#### 學習目標
- 掌握點擊手勢的處理
- 學會多種點擊模式
- 理解手勢的優先級和組合

#### Drag_Demo - 拖拽手勢

**檔案位置**：`SwiftUIDemo/Demo/ViewModifiers/Gestures/Drag_Demo.swift`

#### 學習目標
- 掌握拖拽手勢的實作
- 學會追蹤手勢狀態
- 理解手勢與動畫的結合

#### 實作練習
1. 建立可拖拽的卡片介面
2. 實作手勢控制的導航
3. 建立互動式繪圖功能

---

## 第五階段：進階功能

### 5.1 Animation - 動畫效果

**檔案位置**：`SwiftUIDemo/Demo/Animation/SimpleAnimation.swift`

#### 學習目標
- 掌握 SwiftUI 動畫的基本概念
- 學會三種動畫類型的使用
- 理解動畫的時機和控制

#### 核心概念
SwiftUI 提供三種主要的動畫方式：顯式動畫、隱式動畫和作用域動畫。

#### 程式碼解析

##### 顯式動畫 (Explicit Animation)
```swift
struct SimpleAnimation: View {
    @State private var flag = false
    @State private var isPresented = false
    
    var body: some View {
        RoundedRectangle(cornerRadius: 8)
            .foregroundStyle(.blue)
            .frame(width: flag ? 100 : 50, height: 50)
            .onTapGesture {
                withAnimation {
                    flag.toggle()
                } completion: {
                    isPresented.toggle()
                }
            }
        
        Text("Done")
            .opacity(isPresented ? 1 : 0)
    }
}
```

##### 隱式動畫 (Implicit Animation)
```swift
struct ImplicitAnimation: View {
    @State private var flag = false

    var body: some View {
        RoundedRectangle(cornerRadius: 8)
            .foregroundStyle(.blue)
            .frame(width: flag ? 100 : 50, height: 50)
            .opacity(flag ? 1 : 0.5)
            .animation(.default, value: flag)
            .onTapGesture {
                flag.toggle()
            }
    }
}
```

##### 作用域動畫 (Scoped Animation)
```swift
struct ScopedAnimation: View {
    @State private var flag = false

    var body: some View {
        RoundedRectangle(cornerRadius: 8)
            .foregroundStyle(.blue)
            .frame(width: flag ? 100 : 50, height: 50)
            .animation(.spring(duration: 2)) {
                $0.opacity(flag ? 1 : 0.1)
            }
            .onTapGesture {
                flag.toggle()
            }
    }
}
```

#### 重要語法
- `withAnimation(_:_:)`：顯式動畫語法
- `.animation(_:value:)`：隱式動畫修飾器
- `.animation(_:) { }`：作用域動畫語法
- `.spring()`、`.easeInOut()`：動畫曲線

#### 常見錯誤
1. **動畫不觸發**
   ```swift
   // ❌ 忘記指定監聽的值
   .animation(.default)
   
   // ✅ 正確指定值
   .animation(.default, value: someState)
   ```

#### 實作練習
1. 建立載入動畫
2. 實作頁面轉場效果
3. 建立互動式動畫元件

### 5.2 TextAnimationView - 文字動畫

**檔案位置**：`SwiftUIDemo/Demo/Animation/TextAnimationView.swift`

#### 學習目標
- 掌握文字的動畫效果
- 學會字符級別的動畫控制
- 理解動畫的順序和延遲

### 5.3 NavigationStack - 導航系統

**檔案位置**：`SwiftUIDemo/Demo/Navigation/NavigationStack_Demo.swift`

#### 學習目標
- 掌握現代導航系統的使用
- 學會頁面間的導航和傳值
- 理解導航堆疊的管理

#### 核心概念
NavigationStack 是 iOS 16+ 推出的新導航系統，取代了舊的 NavigationView。

#### 實作練習
1. 建立多層級導航應用
2. 實作返回和深層連結
3. 建立標籤頁導航

### 5.4 Sheet - 模態視圖

**檔案位置**：`SwiftUIDemo/Demo/Navigation/Sheet_Demo.swift`

#### 學習目標
- 掌握模態視圖的呈現
- 學會 Sheet 的生命週期管理
- 理解模態視圖的資料傳遞

#### 實作練習
1. 建立設定頁面 Sheet
2. 實作表單編輯介面
3. 建立圖片詳情檢視

### 5.5 Popover - 彈出視圖

**檔案位置**：`SwiftUIDemo/Demo/Navigation/Popover_Demo.swift`

#### 學習目標
- 掌握 Popover 的使用場景
- 學會 iPad 和 iPhone 的適配
- 理解彈出視圖的定位

### 5.6 TabView - 分頁介面

**檔案位置**：`SwiftUIDemo/Demo/Navigation/TabView_Demo.swift`

#### 學習目標
- 掌握分頁介面的建立
- 學會標籤頁的自定義
- 理解頁面切換和狀態管理

### 5.7 @Observable - 觀察者模式

**檔案位置**：`SwiftUIDemo/Demo/Observation/Counter.swift`

#### 學習目標
- 掌握新的觀察者模式
- 學會 @Observable 的使用
- 理解與 @ObservableObject 的差異

#### 核心概念
@Observable 是 iOS 17+ 推出的新觀察者模式，簡化了資料模型的建立。

#### 程式碼解析

```swift
@Observable
class Model {
    var count: Int = 0
}

struct CounterView: View {
    @State var model = Model()

    var body: some View {
        Button("Increment \(model.count)") {
            model.count += 1
        }

        Divider()

        Counter(count: $model.count)

        Divider()

        ModelCounter(model: model)
    }
}
```

#### 重要語法
- `@Observable`：標記可觀察的類別
- `@State var model`：建立模型實例
- 自動 UI 更新：無需手動綁定

### 5.8 Environment - 環境值系統

**檔案位置**：`SwiftUIDemo/Demo/DataFlow/Environment_Demo.swift`

#### 學習目標
- 掌握環境值的概念和使用
- 學會跨 View 的資料共享
- 理解環境值的最佳實踐

#### 實作練習
1. 建立主題管理系統
2. 實作使用者偏好設定
3. 建立多語言支援

---

## 第六階段：實戰專案

### 6.1 MoodTracker - 情緒追蹤器

**檔案位置**：`SwiftUIDemo/MoodTracker/`

#### 專案目標
建立一個情緒追蹤應用，幫助使用者記錄和分析日常情緒變化。

#### 功能需求
- 情緒記錄和評分
- 歷史資料檢視
- 統計分析和圖表
- 情緒趨勢追蹤

#### 技術重點
- 資料持久化
- 圖表繪製
- 日期處理
- 使用者體驗設計

#### 學習目標
- 掌握完整應用的架構設計
- 學會資料模型的設計和管理
- 理解 UI/UX 的最佳實踐
- 掌握應用的測試和優化

### 6.2 TaskManager - 任務管理器

**檔案位置**：`SwiftUIDemo/TaskManager/`

#### 專案目標
開發一個功能完整的任務管理應用，支援任務的建立、編輯、分類和追蹤。

#### 功能需求
- 任務的 CRUD 操作
- 任務分類和標籤
- 優先級和截止日期
- 搜尋和篩選功能

#### 技術重點
- Core Data 整合
- 搜尋和篩選邏輯
- 複雜的 UI 互動
- 狀態管理優化

### 6.3 TheOneThing - 專注任務應用

**檔案位置**：`SwiftUIDemo/TheOneThing/`

#### 專案目標
實作一個專注於單一任務的應用，幫助使用者提高工作效率。

#### 功能需求
- 每日一件重要事情
- 進度追蹤和提醒
- 成就系統
- 專注模式

#### 技術重點
- 推送通知
- 背景任務處理
- 動畫和互動設計
- 效能優化

### 6.4 專案架構設計

#### 資料夾結構最佳實踐
```
ProjectName/
├── Models/           # 資料模型
├── Views/           # 視圖元件
├── ViewModels/      # 視圖模型
├── Services/        # 服務類別
├── Utils/           # 工具類別
└── Resources/       # 資源檔案
```

#### 程式碼組織原則
1. **單一職責原則**：每個檔案和類別只負責一個功能
2. **關注點分離**：UI、業務邏輯和資料層分離
3. **可重用性**：建立可重用的元件和修飾器
4. **可測試性**：設計易於測試的程式架構

#### 狀態管理策略
- 簡單狀態使用 @State
- 跨 View 共享使用 @Observable
- 全域狀態使用 Environment
- 持久化資料使用 Core Data

---

## 學習路徑與時間規劃

### 每日學習計劃

#### 第一階段 (1-2週)
**第一週**
- 第1-2天：SwiftUI 概述和環境設定
- 第3-4天：宣告式 UI 概念和 View 協議
- 第5-7天：ContentView 實作和 #Preview 使用

**第二週**
- 第8-10天：基礎語法練習和錯誤排除
- 第11-14天：第一個完整 View 的建立和測試

#### 第二階段 (2-3週)
**第三週**
- 第15-17天：Text 元件深入學習
- 第18-21天：Image 和 SF Symbols 使用

**第四週**
- 第22-24天：Button 互動和事件處理
- 第25-28天：Circle 和 Color 基礎圖形

**第五週**
- 第29-31天：綜合練習和作品集建立
- 第32-35天：第二階段專案實作

#### 第三階段 (2-3週)
**第六週**
- 第36-38天：VStack 和 HStack 佈局
- 第39-42天：ZStack 層疊佈局進階

**第七週**
- 第43-45天：List 和 ScrollView 實作
- 第46-49天：Grid 網格佈局和響應式設計

**第八週**
- 第50-52天：佈局修飾器和空間管理
- 第53-56天：複雜佈局綜合練習

#### 第四階段 (3-4週)
**第九週**
- 第57-59天：@State 狀態管理基礎
- 第60-63天：Toggle 和基礎互動

**第十週**
- 第64-66天：TextField 和 Form 表單處理
- 第67-70天：@Binding 資料綁定

**第十一週**
- 第71-73天：手勢處理和 Tap/Drag
- 第74-77天：DrinkTracker 專案實作

**第十二週**
- 第78-80天：綜合互動功能練習
- 第81-84天：狀態管理最佳實踐

#### 第五階段 (3-4週)
**第十三週**
- 第85-87天：Animation 動畫基礎
- 第88-91天：NavigationStack 導航系統

**第十四週**
- 第92-94天：Sheet 和 Popover 模態視圖
- 第95-98天：TabView 分頁介面

**第十五週**
- 第99-101天：@Observable 觀察者模式
- 第102-105天：Environment 環境值系統

**第十六週**
- 第106-108天：進階功能綜合練習
- 第109-112天：效能優化和最佳實踐

#### 第六階段 (4-6週)
**第十七-十八週**
- MoodTracker 專案開發
- 需求分析和架構設計
- 核心功能實作

**第十九-二十週**
- TaskManager 專案開發
- 複雜資料管理
- 進階 UI 互動

**第二十一-二十二週**
- TheOneThing 專案開發
- 專注功能實作
- 使用者體驗優化

### 週度檢核點

#### 每週學習檢核
1. **理論理解**：核心概念是否清楚
2. **實作能力**：能否獨立完成練習
3. **程式碼品質**：是否遵循最佳實踐
4. **問題解決**：遇到問題的處理能力

#### 檢核方式
- 每週五進行學習回顧
- 完成週度練習專案
- 參與社群討論和問答
- 記錄學習筆記和心得

### 實作里程碑

#### 第一階段里程碑
- [ ] 建立第一個 SwiftUI 專案
- [ ] 理解 View 協議和宣告式 UI
- [ ] 掌握 #Preview 的使用
- [ ] 能夠修改和自定義 ContentView

#### 第二階段里程碑
- [ ] 熟練使用所有基礎元件
- [ ] 建立個人名片應用
- [ ] 掌握文字和圖片的處理
- [ ] 理解元件的修飾器使用

#### 第三階段里程碑
- [ ] 掌握所有佈局容器
- [ ] 建立複雜的介面佈局
- [ ] 理解響應式設計原理
- [ ] 能夠處理不同螢幕尺寸

#### 第四階段里程碑
- [ ] 掌握狀態管理基礎
- [ ] 建立互動式應用
- [ ] 理解資料綁定概念
- [ ] 能夠處理使用者輸入

#### 第五階段里程碑
- [ ] 掌握進階 SwiftUI 特性
- [ ] 建立具有動畫的應用
- [ ] 理解導航和模態視圖
- [ ] 掌握觀察者模式

#### 第六階段里程碑
- [ ] 完成三個實戰專案
- [ ] 掌握應用架構設計
- [ ] 理解最佳實踐和優化
- [ ] 具備獨立開發能力

### 疑難排解

#### 常見學習困難

1. **概念理解困難**
   - **症狀**：無法理解宣告式 UI 的概念
   - **解決方案**：
     - 對比命令式 UI 的程式碼範例
     - 練習簡單的 UI 元件建立
     - 觀看視覺化教學影片

2. **語法記憶困難**
   - **症狀**：經常忘記修飾器的使用方法
   - **解決方案**：
     - 建立個人語法速查表
     - 反覆練習常用修飾器
     - 使用 Xcode 的自動完成功能

3. **佈局問題**
   - **症狀**：無法實現想要的佈局效果
   - **解決方案**：
     - 使用 Debug Layout 工具
     - 分析佈局的層次結構
     - 參考官方佈局指南

4. **狀態管理混亂**
   - **症狀**：不知道何時使用哪種狀態管理方式
   - **解決方案**：
     - 理解各種狀態管理的適用場景
     - 從簡單的 @State 開始練習
     - 逐步學習更複雜的狀態管理

#### 技術問題解決

1. **Xcode 相關問題**
   - **問題**：預覽不工作或載入緩慢
   - **解決方案**：
     - 清理 Derived Data
     - 重啟 Xcode
     - 檢查 #Preview 語法

2. **編譯錯誤**
   - **問題**：無法理解錯誤訊息
   - **解決方案**：
     - 學會閱讀錯誤訊息
     - 使用 Xcode 的修復建議
     - 查找官方文件和社群解答

3. **效能問題**
   - **問題**：應用運行緩慢或卡頓
   - **解決方案**：
     - 使用 Instruments 工具分析
     - 優化資料結構和演算法
     - 減少不必要的重新繪製

#### 學習資源建議

1. **遇到困難時的求助管道**
   - Apple Developer Forums
   - Stack Overflow
   - Swift 社群群組
   - GitHub 開源專案

2. **持續學習資源**
   - Apple 官方文件
   - WWDC 影片
   - 技術部落格
   - 開源程式碼研究

---

## 實用附錄

### A. Apple 官方文件連結

#### 核心文件
- [SwiftUI Overview](https://developer.apple.com/documentation/swiftui/)
- [SwiftUI Tutorials](https://developer.apple.com/tutorials/swiftui)
- [Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/)

#### API 參考
- [SwiftUI Views and Controls](https://developer.apple.com/documentation/swiftui/views-and-controls)
- [SwiftUI Layout](https://developer.apple.com/documentation/swiftui/layout)
- [SwiftUI State and Data Flow](https://developer.apple.com/documentation/swiftui/state-and-data-flow)

#### WWDC 重要影片
- [Introducing SwiftUI (WWDC 2019)](https://developer.apple.com/videos/play/wwdc2019/204/)
- [SwiftUI Essentials (WWDC 2023)](https://developer.apple.com/videos/play/wwdc2023/10046/)
- [What's new in SwiftUI (每年更新)](https://developer.apple.com/videos/play/wwdc2023/10148/)

### B. SwiftUI 速查表

#### 基礎元件
| 元件 | 用途 | 基本語法 |
|------|------|----------|
| Text | 文字顯示 | `Text("Hello")` |
| Image | 圖片顯示 | `Image("photo")` |
| Button | 按鈕 | `Button("Click") { }` |
| TextField | 文字輸入 | `TextField("Title", text: $text)` |
| Toggle | 開關 | `Toggle("Switch", isOn: $flag)` |

#### 佈局容器
| 容器 | 用途 | 基本語法 |
|------|------|----------|
| VStack | 垂直佈局 | `VStack { }` |
| HStack | 水平佈局 | `HStack { }` |
| ZStack | 層疊佈局 | `ZStack { }` |
| List | 列表 | `List { }` |
| ScrollView | 滾動視圖 | `ScrollView { }` |

#### 狀態管理
| 屬性包裝器 | 用途 | 使用場景 |
|------------|------|----------|
| @State | 本地狀態 | View 內部狀態 |
| @Binding | 綁定狀態 | 父子元件共享 |
| @Observable | 觀察模型 | 複雜資料模型 |
| @Environment | 環境值 | 跨層級傳遞 |

#### 常用修飾器
| 修飾器 | 功能 | 範例 |
|--------|------|------|
| .padding() | 內邊距 | `.padding(16)` |
| .background() | 背景 | `.background(Color.blue)` |
| .foregroundColor() | 前景色 | `.foregroundColor(.white)` |
| .font() | 字體 | `.font(.title)` |
| .frame() | 尺寸 | `.frame(width: 100, height: 50)` |

### C. 開發工具介紹

#### Xcode 必備功能
1. **SwiftUI 預覽**
   - 即時預覽 UI 變化
   - 多設備同時預覽
   - 互動式預覽測試

2. **Interface Builder 整合**
   - 視覺化介面編輯
   - 程式碼和設計同步
   - 約束和佈局工具

3. **調試工具**
   - View Hierarchy Debugger
   - Memory Graph Debugger
   - Instruments 效能分析

#### 實用 Xcode 快捷鍵
| 功能 | 快捷鍵 | 說明 |
|------|--------|------|
| 顯示預覽 | Cmd + Option + Return | 開啟/關閉預覽 |
| 恢復預覽 | Cmd + Option + P | 重新載入預覽 |
| 快速說明 | Option + 點擊 | 查看元件說明 |
| 跳轉定義 | Cmd + 點擊 | 跳轉到定義 |
| 搜尋檔案 | Cmd + Shift + O | 快速開啟檔案 |

#### 第三方工具推薦
1. **SF Symbols App**
   - 瀏覽系統圖示
   - 自定義 SF Symbols
   - 匯出不同格式

2. **SwiftUI Inspector**
   - 分析 SwiftUI 視圖結構
   - 即時修改屬性
   - 效能分析工具

### D. 社群資源推薦

#### 學習網站
1. **Hacking with Swift**
   - [SwiftUI by Example](https://www.hackingwithswift.com/quick-start/swiftui)
   - 豐富的範例和教學
   - 從基礎到進階的完整課程

2. **Ray Wenderlich**
   - [SwiftUI Tutorials](https://www.raywenderlich.com/ios/swiftui)
   - 高品質的教學文章
   - 實戰專案指導

3. **Apple Developer**
   - [SwiftUI Tutorials](https://developer.apple.com/tutorials/swiftui)
   - 官方權威教學
   - 最新功能介紹

#### 技術部落格
1. **Swift by Sundell**
   - 深度技術文章
   - 最佳實踐分享
   - 進階概念解析

2. **SwiftUI Lab**
   - SwiftUI 專門部落格
   - 創新用法分享
   - 實驗性功能探索

#### 開發者社群
1. **Stack Overflow**
   - 程式問題解答
   - SwiftUI 標籤追蹤
   - 社群討論

2. **Reddit r/SwiftUI**
   - 社群討論平台
   - 專案分享
   - 經驗交流

3. **Discord/Slack 群組**
   - 即時討論
   - 技術支援
   - 網路交流

### E. 相關概念對照表

#### SwiftUI vs UIKit 對照

| 功能 | SwiftUI | UIKit |
|------|---------|--------|
| 標籤 | Text | UILabel |
| 按鈕 | Button | UIButton |
| 圖片 | Image | UIImageView |
| 輸入框 | TextField | UITextField |
| 表格 | List | UITableView |
| 捲動 | ScrollView | UIScrollView |
| 導航 | NavigationStack | UINavigationController |
| 模態 | Sheet | UIViewController.present |

#### 狀態管理對照

| SwiftUI | UIKit | 說明 |
|---------|-------|------|
| @State | 私有屬性 | 本地狀態管理 |
| @Binding | Delegate/Closure | 雙向資料綁定 |
| @Observable | NotificationCenter | 觀察者模式 |
| @Environment | UserDefaults/Singleton | 全域狀態 |

#### 生命週期對照

| SwiftUI | UIKit | 觸發時機 |
|---------|-------|----------|
| onAppear | viewDidAppear | 視圖出現時 |
| onDisappear | viewDidDisappear | 視圖消失時 |
| onChange | 無直接對應 | 狀態改變時 |
| task | viewDidLoad | 非同步任務 |

---

## 結語

### 學習成果檢核

完成本教學課程後，您應該能夠：

1. **基礎能力**
   - 理解 SwiftUI 的核心概念
   - 熟練使用各種 UI 元件
   - 掌握佈局和狀態管理

2. **進階能力**
   - 建立複雜的使用者介面
   - 實作動畫和互動效果
   - 處理導航和資料流

3. **專案能力**
   - 設計和開發完整應用
   - 運用最佳實踐和設計模式
   - 解決實際開發問題

### 持續學習建議

1. **跟上技術發展**
   - 關注 WWDC 新功能發布
   - 學習新的 SwiftUI 特性
   - 參與開發者社群討論

2. **深化專業技能**
   - 學習相關技術 (Core Data, CloudKit)
   - 掌握應用架構設計
   - 研究效能優化技巧

3. **實作更多專案**
   - 開發個人應用專案
   - 參與開源專案貢獻
   - 建立作品集展示

### 未來發展方向

1. **專業開發路線**
   - iOS 應用開發工程師
   - SwiftUI 專家顧問
   - 技術文件撰寫者

2. **技術延伸學習**
   - macOS 應用開發
   - watchOS 應用開發
   - 跨平台開發技術

3. **領域專精發展**
   - UI/UX 設計整合
   - 應用架構設計
   - 效能優化專家

---

**祝您學習愉快，開發順利！**

如果您在學習過程中遇到任何問題，歡迎參考本文件的疑難排解章節，或者透過社群資源尋求幫助。記住，學習程式設計是一個持續的過程，保持好奇心和實作精神是成功的關鍵。

*最後更新：2024年*
*本文件將隨著 SwiftUI 技術發展持續更新*