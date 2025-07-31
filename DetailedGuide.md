# SwiftUI Demo 檔案詳細教學指南

## 概述

本文件為每個 Demo 檔案提供詳細的學習目標、核心概念說明、重要語法解析、常見錯誤及解決方案，以及延伸練習建議。配合 `CourseDesign.md` 使用，形成完整的學習體系。

---

## 第一階段：基礎概念

### ContentView.swift - SwiftUI 入門基石

#### 檔案位置
`SwiftUIDemo/ContentView.swift`

#### 學習目標
- 理解 SwiftUI 應用的基本結構
- 掌握 View 協議的核心概念
- 學會使用 Preview 進行快速開發
- 熟悉 SwiftUI 的宣告式語法

#### 核心概念詳解

**1. View 協議**
```swift
struct ContentView: View {
    var body: some View {
        // 必須返回符合 View 協議的內容
    }
}
```
- 所有 SwiftUI UI 元件都必須遵循 View 協議
- `body` 屬性是唯一必須實現的要求
- 使用 `some View` 作為不透明返回類型

**2. 宣告式語法**
```swift
VStack {
    Image(systemName: "globe")
        .imageScale(.large)
        .foregroundStyle(.tint)
    Text("Hello, world!")
}
.padding()
```
- 描述 UI 應該是什麼樣子，而不是如何建立
- 使用修飾器（modifiers）來調整視圖屬性
- 修飾器的順序很重要

**3. Preview 系統**
```swift
#Preview {
    ContentView()
}
```
- 提供即時預覽功能
- 支援多裝置預覽
- 可以預覽不同狀態

#### 重要語法說明

**修飾器鏈**：
```swift
Text("Hello")
    .font(.title)           // 設定字體
    .foregroundColor(.blue) // 設定顏色
    .padding()              // 添加內邊距
```

**系統圖示使用**：
```swift
Image(systemName: "globe")  // 使用 SF Symbols
    .imageScale(.large)     // 調整大小
    .foregroundStyle(.tint) // 使用主題色彩
```

#### 常見錯誤

1. **忘記遵循 View 協議**
```swift
// ❌ 錯誤
struct ContentView {
    var body: some View {
        Text("Hello")
    }
}

// ✅ 正確
struct ContentView: View {
    var body: some View {
        Text("Hello")
    }
}
```

2. **body 返回多個根視圖**
```swift
// ❌ 錯誤
var body: some View {
    Text("第一行")
    Text("第二行")  // 編譯錯誤
}

// ✅ 正確
var body: some View {
    VStack {
        Text("第一行")
        Text("第二行")
    }
}
```

3. **Preview 語法錯誤**
```swift
// ❌ 錯誤
#Preview("ContentView") {
    ContentView()
}

// ✅ 正確（簡單版本）
#Preview {
    ContentView()
}
```

#### 延伸練習

**練習1：個人化歡迎頁面**
```swift
struct WelcomeView: View {
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "hand.wave.fill")
                .font(.system(size: 60))
                .foregroundColor(.orange)
            
            Text("歡迎來到 SwiftUI")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("開始您的學習之旅")
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
        .padding()
    }
}
```

**練習2：多狀態 Preview**
```swift
#Preview("淺色模式") {
    ContentView()
        .preferredColorScheme(.light)
}

#Preview("深色模式") {
    ContentView()
        .preferredColorScheme(.dark)
}

#Preview("大字體") {
    ContentView()
        .dynamicTypeSize(.xxxLarge)
}
```

---

## 第二階段：基礎元件

### Text_Demo.swift - 文字顯示專家

#### 檔案位置
`SwiftUIDemo/Demo/Views/1_Primitive/Text_Demo.swift`

#### 學習目標
- 掌握 Text 視圖的所有功能
- 理解字體系統和文字樣式
- 學會文字格式化和多語言支援
- 熟悉文字動畫和互動效果

#### 核心概念詳解

**1. 基本文字顯示**
```swift
Text("Hello, SwiftUI!")
```

**2. 字體設定**
```swift
Text("大標題")
    .font(.largeTitle)      // 系統預定義字體

Text("自訂字體")
    .font(.custom("Helvetica", size: 18))  // 自訂字體

Text("粗體文字")
    .fontWeight(.bold)      // 字體粗細
```

**3. 顏色和樣式**
```swift
Text("彩色文字")
    .foregroundColor(.blue)         // 前景色
    .background(.yellow)            // 背景色

Text("漸層文字")
    .foregroundStyle(
        LinearGradient(
            colors: [.red, .blue],
            startPoint: .leading,
            endPoint: .trailing
        )
    )
```

**4. 多行文字處理**
```swift
Text("這是一段很長的文字，可能需要換行顯示")
    .multilineTextAlignment(.center)  // 對齊方式
    .lineLimit(3)                     // 行數限制
    .truncationMode(.tail)            // 截斷模式
```

#### 進階功能

**1. 富文本組合**
```swift
Text("歡迎來到 ")
    .foregroundColor(.primary) +
Text("SwiftUI")
    .foregroundColor(.blue)
    .fontWeight(.bold) +
Text(" 世界！")
    .foregroundColor(.primary)
```

**2. 可點擊文字**
```swift
Text("點擊這裡了解更多")
    .underline()
    .foregroundColor(.blue)
    .onTapGesture {
        // 處理點擊事件
    }
```

**3. 本地化支援**
```swift
Text("welcome_message")  // 從 Localizable.strings 讀取
Text("Hello, \(userName)!")  // 字符串插值
```

#### 常見錯誤

1. **字體名稱錯誤**
```swift
// ❌ 錯誤
.font(.custom("Arial-Bold", size: 16))  // 字體名稱不正確

// ✅ 正確
.font(.custom("Arial", size: 16))
.fontWeight(.bold)
```

2. **顏色設定位置錯誤**
```swift
// ❌ 錯誤（顏色可能被覆蓋）
Text("文字")
    .background(.blue)
    .foregroundColor(.white)

// ✅ 正確
Text("文字")
    .foregroundColor(.white)
    .background(.blue)
```

#### 延伸練習

**練習1：新聞標題元件**
```swift
struct NewsHeadline: View {
    let category: String
    let title: String
    let timestamp: Date
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(category.uppercased())
                .font(.caption)
                .fontWeight(.semibold)
                .foregroundColor(.blue)
            
            Text(title)
                .font(.headline)
                .lineLimit(2)
            
            Text(timestamp, style: .relative)
                .font(.caption)
                .foregroundColor(.secondary)
        }
    }
}
```

**練習2：動態文字大小**
```swift
struct DynamicText: View {
    @State private var fontSize: CGFloat = 16
    
    var body: some View {
        VStack {
            Text("可調整大小的文字")
                .font(.system(size: fontSize))
            
            Slider(value: $fontSize, in: 12...40)
                .padding()
        }
    }
}
```

### Image_Demo.swift - 圖片處理大師

#### 檔案位置
`SwiftUIDemo/Demo/Views/1_Primitive/Image_Demo.swift`

#### 學習目標
- 掌握各種圖片載入方式
- 理解圖片尺寸和比例調整
- 學會圖片修飾器和濾鏡效果
- 熟悉 SF Symbols 系統

#### 核心概念詳解

**1. 圖片載入方式**
```swift
// 系統圖示
Image(systemName: "heart.fill")

// 本地圖片
Image("my-image")

// 網路圖片（需要額外處理）
AsyncImage(url: URL(string: "https://example.com/image.jpg"))
```

**2. 尺寸控制**
```swift
Image("landscape")
    .resizable()                    // 讓圖片可調整大小
    .scaledToFit()                  // 等比例縮放適應
    .frame(width: 200, height: 100) // 設定框架大小

Image("portrait")
    .resizable()
    .scaledToFill()                 // 填滿容器
    .clipped()                      // 裁剪超出部分
```

**3. SF Symbols 高級用法**
```swift
Image(systemName: "heart.fill")
    .symbolRenderingMode(.multicolor)  // 多色渲染
    .font(.system(size: 40))           // 設定大小
    .foregroundStyle(.red, .pink)      // 多層顏色
```

**4. 圖片效果**
```swift
Image("photo")
    .resizable()
    .aspectRatio(contentMode: .fit)
    .clipShape(Circle())               // 圓形裁剪
    .overlay(
        Circle().stroke(.white, lineWidth: 4)  // 邊框
    )
    .shadow(radius: 10)                // 陰影
```

#### 進階功能

**1. 非同步圖片載入**
```swift
AsyncImage(url: URL(string: imageURL)) { image in
    image
        .resizable()
        .aspectRatio(contentMode: .fit)
} placeholder: {
    ProgressView()
        .frame(width: 100, height: 100)
}
```

**2. 圖片動畫**
```swift
@State private var isHeartFilled = false

Image(systemName: isHeartFilled ? "heart.fill" : "heart")
    .foregroundColor(isHeartFilled ? .red : .gray)
    .font(.system(size: 30))
    .scaleEffect(isHeartFilled ? 1.2 : 1.0)
    .animation(.easeInOut(duration: 0.3), value: isHeartFilled)
    .onTapGesture {
        isHeartFilled.toggle()
    }
```

**3. 圖片選擇器整合**
```swift
struct ImagePicker: View {
    @State private var selectedImage: UIImage?
    @State private var showingImagePicker = false
    
    var body: some View {
        VStack {
            if let image = selectedImage {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
            } else {
                Rectangle()
                    .fill(.gray.opacity(0.3))
                    .frame(height: 200)
                    .overlay(
                        Text("點擊選擇圖片")
                    )
            }
        }
        .onTapGesture {
            showingImagePicker = true
        }
        .sheet(isPresented: $showingImagePicker) {
            // ImagePicker implementation
        }
    }
}
```

#### 常見錯誤

1. **忘記使用 resizable()**
```swift
// ❌ 錯誤（圖片不會調整大小）
Image("large-image")
    .frame(width: 100, height: 100)

// ✅ 正確
Image("large-image")
    .resizable()
    .frame(width: 100, height: 100)
```

2. **圖片變形問題**
```swift
// ❌ 錯誤（圖片可能變形）
Image("photo")
    .resizable()
    .frame(width: 100, height: 200)

// ✅ 正確
Image("photo")
    .resizable()
    .scaledToFill()
    .frame(width: 100, height: 200)
    .clipped()
```

#### 延伸練習

**練習1：頭像元件**
```swift
struct ProfileAvatar: View {
    let imageURL: String?
    let size: CGFloat
    
    var body: some View {
        Group {
            if let imageURL = imageURL,
               let url = URL(string: imageURL) {
                AsyncImage(url: url) { image in
                    image
                        .resizable()
                        .scaledToFill()
                } placeholder: {
                    Image(systemName: "person.circle.fill")
                        .foregroundColor(.gray)
                }
            } else {
                Image(systemName: "person.circle.fill")
                    .foregroundColor(.gray)
            }
        }
        .frame(width: size, height: size)
        .clipShape(Circle())
        .overlay(
            Circle().stroke(.white, lineWidth: 2)
        )
    }
}
```

### Button_Demo.swift - 互動按鈕專家

#### 檔案位置
`SwiftUIDemo/Demo/Views/3_Control/Button_Demo.swift`

#### 學習目標
- 掌握按鈕的創建和樣式設計
- 理解按鈕狀態和互動反饋
- 學會自訂按鈕樣式和動畫
- 熟悉無障礙設計原則

#### 核心概念詳解

**1. 基本按鈕創建**
```swift
Button("點我") {
    print("按鈕被點擊")
}

Button(action: {
    // 按鈕動作
}) {
    Text("自訂標籤")
        .font(.headline)
        .foregroundColor(.white)
        .padding()
        .background(.blue)
        .cornerRadius(10)
}
```

**2. 按鈕樣式**
```swift
Button("預設樣式") { }
    .buttonStyle(.automatic)

Button("邊框樣式") { }
    .buttonStyle(.bordered)

Button("突出樣式") { }
    .buttonStyle(.borderedProminent)

Button("簡潔樣式") { }
    .buttonStyle(.plain)
```

**3. 狀態管理**
```swift
@State private var isPressed = false
@State private var count = 0

Button("計數器: \(count)") {
    count += 1
}
.scaleEffect(isPressed ? 0.95 : 1.0)
.onLongPressGesture(minimumDuration: 0) { pressing in
    withAnimation(.easeInOut(duration: 0.1)) {
        isPressed = pressing
    }
} perform: {
    // 長按動作
}
```

**4. 禁用狀態**
```swift
@State private var isButtonDisabled = false

Button("提交") {
    // 提交邏輯
}
.disabled(isButtonDisabled)
.opacity(isButtonDisabled ? 0.6 : 1.0)
```

#### 進階功能

**1. 自訂按鈕樣式**
```swift
struct PrimaryButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(.white)
            .padding()
            .background(
                LinearGradient(
                    colors: [.blue, .purple],
                    startPoint: .leading,
                    endPoint: .trailing
                )
            )
            .cornerRadius(25)
            .scaleEffect(configuration.isPressed ? 0.95 : 1.0)
            .animation(.easeOut(duration: 0.1), value: configuration.isPressed)
    }
}

// 使用
Button("主要按鈕") { }
    .buttonStyle(PrimaryButtonStyle())
```

**2. 載入狀態按鈕**
```swift
struct LoadingButton: View {
    @State private var isLoading = false
    let title: String
    let action: () async -> Void
    
    var body: some View {
        Button(action: {
            Task {
                isLoading = true
                await action()
                isLoading = false
            }
        }) {
            HStack {
                if isLoading {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle(tint: .white))
                        .scaleEffect(0.8)
                } else {
                    Text(title)
                }
            }
            .frame(minWidth: 120)
        }
        .disabled(isLoading)
        .buttonStyle(.borderedProminent)
    }
}
```

**3. 浮動動作按鈕**
```swift
struct FloatingActionButton: View {
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(systemName: "plus")
                .font(.title2)
                .foregroundColor(.white)
        }
        .frame(width: 56, height: 56)
        .background(.blue)
        .clipShape(Circle())
        .shadow(color: .black.opacity(0.3), radius: 4, x: 0, y: 2)
        .hoverEffect(.lift)
    }
}
```

#### 常見錯誤

1. **按鈕標籤錯誤**
```swift
// ❌ 錯誤（語法錯誤）
Button("點我") {
    Text("動作")  // 這裡應該是動作代碼
}

// ✅ 正確
Button("點我") {
    // 執行動作
    print("按鈕被點擊")
}
```

2. **狀態更新問題**
```swift
// ❌ 錯誤（可能導致更新問題）
Button("更新") {
    DispatchQueue.main.async {
        // 不必要的異步更新
        self.value += 1
    }
}

// ✅ 正確
Button("更新") {
    value += 1  // 直接更新
}
```

#### 延伸練習

**練習1：評分按鈕**
```swift
struct StarRating: View {
    @Binding var rating: Int
    let maxRating: Int = 5
    
    var body: some View {
        HStack {
            ForEach(1...maxRating, id: \.self) { star in
                Button(action: {
                    rating = star
                }) {
                    Image(systemName: star <= rating ? "star.fill" : "star")
                        .foregroundColor(star <= rating ? .yellow : .gray)
                        .font(.title2)
                }
                .buttonStyle(.plain)
            }
        }
    }
}
```

**練習2：確認對話框按鈕**
```swift
struct ConfirmationButton: View {
    @State private var showingAlert = false
    let title: String
    let message: String
    let action: () -> Void
    
    var body: some View {
        Button(title) {
            showingAlert = true
        }
        .alert("確認", isPresented: $showingAlert) {
            Button("取消", role: .cancel) { }
            Button("確定", role: .destructive) {
                action()
            }
        } message: {
            Text(message)
        }
    }
}
```

### Circle_Demo.swift - 幾何圖形基礎

#### 檔案位置
`SwiftUIDemo/Demo/Views/1_Primitive/Circle_Demo.swift`

#### 學習目標
- 掌握基本幾何圖形的使用
- 理解形狀填充和邊框設定
- 學會圖形組合和變換
- 熟悉路徑和自訂形狀

#### 核心概念詳解

**1. 基本圓形**
```swift
Circle()
    .fill(.blue)                    // 填充顏色
    .frame(width: 100, height: 100) // 設定大小

Circle()
    .stroke(.red, lineWidth: 3)     // 邊框樣式
    .frame(width: 100, height: 100)
```

**2. 其他基本形狀**
```swift
Rectangle()
    .fill(.green)
    .frame(width: 100, height: 60)

RoundedRectangle(cornerRadius: 10)
    .fill(.orange)
    .frame(width: 100, height: 60)

Ellipse()
    .fill(.purple)
    .frame(width: 120, height: 80)
```

**3. 漸層填充**
```swift
Circle()
    .fill(
        LinearGradient(
            colors: [.red, .blue],
            startPoint: .top,
            endPoint: .bottom
        )
    )
    .frame(width: 100, height: 100)

Circle()
    .fill(
        RadialGradient(
            colors: [.yellow, .orange, .red],
            center: .center,
            startRadius: 10,
            endRadius: 50
        )
    )
```

**4. 圖形組合**
```swift
ZStack {
    Circle()
        .fill(.blue)
        .frame(width: 100, height: 100)
    
    Circle()
        .fill(.white)
        .frame(width: 60, height: 60)
    
    Circle()
        .fill(.red)
        .frame(width: 20, height: 20)
}
```

#### 進階功能

**1. 自訂形狀**
```swift
struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        
        return path
    }
}

// 使用
Triangle()
    .fill(.blue)
    .frame(width: 100, height: 100)
```

**2. 動畫圓形**
```swift
struct PulsingCircle: View {
    @State private var isPulsing = false
    
    var body: some View {
        Circle()
            .fill(.blue.opacity(0.6))
            .frame(width: 100, height: 100)
            .scaleEffect(isPulsing ? 1.2 : 1.0)
            .animation(.easeInOut(duration: 1).repeatForever(autoreverses: true), value: isPulsing)
            .onAppear {
                isPulsing = true
            }
    }
}
```

**3. 進度圓圈**
```swift
struct ProgressCircle: View {
    let progress: Double
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(.gray.opacity(0.3), lineWidth: 8)
            
            Circle()
                .trim(from: 0, to: progress)
                .stroke(.blue, style: StrokeStyle(lineWidth: 8, lineCap: .round))
                .rotationEffect(.degrees(-90))
                .animation(.easeInOut, value: progress)
        }
        .frame(width: 100, height: 100)
    }
}
```

#### 延伸練習

**練習1：載入指示器**
```swift
struct LoadingSpinner: View {
    @State private var rotation = 0.0
    
    var body: some View {
        Circle()
            .trim(from: 0, to: 0.7)
            .stroke(.blue, style: StrokeStyle(lineWidth: 4, lineCap: .round))
            .frame(width: 50, height: 50)
            .rotationEffect(.degrees(rotation))
            .animation(.linear(duration: 1).repeatForever(autoreverses: false), value: rotation)
            .onAppear {
                rotation = 360
            }
    }
}
```

### Color_Demo.swift - 顏色系統專家

#### 檔案位置
`SwiftUIDemo/Demo/Views/1_Primitive/Color_Demo.swift`

#### 學習目標
- 掌握 SwiftUI 顏色系統
- 理解動態顏色和主題適配
- 學會漸層和材質效果
- 熟悉顏色無障礙設計

#### 核心概念詳解

**1. 基本顏色使用**
```swift
// 系統預定義顏色
Color.red
Color.blue
Color.primary      // 適應主題的主要顏色
Color.secondary    // 適應主題的次要顏色

// 自訂顏色
Color(red: 0.2, green: 0.4, blue: 0.8)
Color(hue: 0.6, saturation: 0.8, brightness: 0.9)
```

**2. 顏色修飾器**
```swift
Rectangle()
    .fill(.blue)                    // 填充
    .foregroundColor(.white)        // 前景色
    .background(.gray)              // 背景色
    .border(.black, width: 2)       // 邊框
```

**3. 漸層效果**
```swift
// 線性漸層
LinearGradient(
    colors: [.red, .yellow, .blue],
    startPoint: .topLeading,
    endPoint: .bottomTrailing
)

// 徑向漸層
RadialGradient(
    colors: [.white, .blue],
    center: .center,
    startRadius: 10,
    endRadius: 100
)

// 角度漸層
AngularGradient(
    colors: [.red, .yellow, .green, .blue, .purple, .red],
    center: .center
)
```

**4. 動態顏色**
```swift
Color("CustomColor")  // 從 Asset Catalog 讀取，支援深淺模式

// 程式化動態顏色
@Environment(\.colorScheme) var colorScheme

var adaptiveColor: Color {
    colorScheme == .dark ? .white : .black
}
```

#### 進階功能

**1. 材質效果**
```swift
Rectangle()
    .fill(.ultraThinMaterial)       // 超薄材質
    .fill(.thinMaterial)            // 薄材質
    .fill(.regularMaterial)         // 普通材質
    .fill(.thickMaterial)           // 厚材質
    .fill(.ultraThickMaterial)      // 超厚材質
```

**2. 顏色選擇器**
```swift
struct ColorPickerDemo: View {
    @State private var selectedColor = Color.red
    
    var body: some View {
        VStack {
            Circle()
                .fill(selectedColor)
                .frame(width: 100, height: 100)
            
            ColorPicker("選擇顏色", selection: $selectedColor)
                .padding()
        }
    }
}
```

**3. 主題系統**
```swift
struct ThemeColors {
    static let primary = Color("PrimaryColor")
    static let secondary = Color("SecondaryColor")
    static let accent = Color("AccentColor")
    static let background = Color("BackgroundColor")
}

// 使用
Rectangle()
    .fill(ThemeColors.primary)
```

#### 延伸練習

**練習1：調色盤**
```swift
struct ColorPalette: View {
    let colors: [Color] = [
        .red, .orange, .yellow, .green, 
        .blue, .purple, .pink, .gray
    ]
    
    var body: some View {
        LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 4)) {
            ForEach(colors.indices, id: \.self) { index in
                RoundedRectangle(cornerRadius: 8)
                    .fill(colors[index])
                    .aspectRatio(1, contentMode: .fit)
                    .onTapGesture {
                        // 處理顏色選擇
                    }
            }
        }
        .padding()
    }
}
```

---

## 第三階段：容器與佈局

### VStack_Demo.swift - 垂直佈局大師

#### 檔案位置
`SwiftUIDemo/Demo/Views/2_Container/VStack_Demo.swift`

#### 學習目標
- 掌握 VStack 垂直佈局原理
- 理解對齊和間距控制
- 學會嵌套佈局設計
- 熟悉響應式佈局技巧

#### 核心概念詳解

**1. 基本 VStack 使用**
```swift
VStack {
    Text("第一行")
    Text("第二行")
    Text("第三行")
}
```

**2. 對齊控制**
```swift
VStack(alignment: .leading) {    // 左對齊
    Text("短文字")
    Text("這是一行比較長的文字")
}

VStack(alignment: .trailing) {   // 右對齊
    Text("短文字")
    Text("這是一行比較長的文字")
}

VStack(alignment: .center) {     // 居中對齊（預設）
    Text("短文字")
    Text("這是一行比較長的文字")
}
```

**3. 間距控制**
```swift
VStack(spacing: 20) {            // 固定間距
    Text("第一行")
    Text("第二行")
    Text("第三行")
}

VStack(spacing: 0) {             // 無間距
    Rectangle().fill(.red).frame(height: 50)
    Rectangle().fill(.blue).frame(height: 50)
    Rectangle().fill(.green).frame(height: 50)
}
```

**4. 動態間距**
```swift
VStack {
    Text("標題")
    
    Spacer()                     // 彈性空間
    
    Text("內容")
    Text("更多內容")
    
    Spacer()
    
    Text("底部")
}
```

#### 進階功能

**1. 條件佈局**
```swift
struct ConditionalLayout: View {
    @State private var showExtraContent = false
    
    var body: some View {
        VStack {
            Text("標題")
            
            if showExtraContent {
                Text("額外內容1")
                Text("額外內容2")
            }
            
            Button("切換內容") {
                withAnimation {
                    showExtraContent.toggle()
                }
            }
        }
    }
}
```

**2. 滾動式垂直佈局**
```swift
ScrollView {
    VStack(spacing: 16) {
        ForEach(0..<50) { index in
            HStack {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                Text("項目 \(index)")
                Spacer()
            }
            .padding()
            .background(.gray.opacity(0.1))
            .cornerRadius(8)
        }
    }
    .padding()
}
```

**3. 複雜卡片佈局**
```swift
struct InfoCard: View {
    let title: String
    let subtitle: String
    let description: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text(title)
                        .font(.headline)
                        .fontWeight(.bold)
                    
                    Text(subtitle)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .foregroundColor(.secondary)
            }
            
            Text(description)
                .font(.body)
                .lineLimit(3)
            
            Divider()
            
            HStack {
                Button("主要動作") { }
                    .buttonStyle(.borderedProminent)
                
                Spacer()
                
                Button("次要動作") { }
                    .buttonStyle(.bordered)
            }
        }
        .padding()
        .background(.white)
        .cornerRadius(12)
        .shadow(radius: 2)
    }
}
```

#### 常見錯誤

1. **超過視圖限制**
```swift
// ❌ 錯誤（超過 10 個子視圖）
VStack {
    Text("1"); Text("2"); Text("3"); Text("4"); Text("5")
    Text("6"); Text("7"); Text("8"); Text("9"); Text("10")
    Text("11")  // 編譯錯誤
}

// ✅ 正確
VStack {
    Group {
        Text("1"); Text("2"); Text("3"); Text("4"); Text("5")
    }
    Group {
        Text("6"); Text("7"); Text("8"); Text("9"); Text("10")
        Text("11")
    }
}
```

2. **對齊理解錯誤**
```swift
// ❌ 錯誤理解（認為 alignment 影響整個 VStack）
VStack(alignment: .leading) {
    // 這裡的對齊只影響子視圖之間的對齊，不是 VStack 本身的位置
}
.frame(maxWidth: .infinity, alignment: .leading)  // 這才是 VStack 的對齊
```

#### 延伸練習

**練習1：個人資料卡**
```swift
struct ProfileCard: View {
    let user: User
    
    var body: some View {
        VStack(spacing: 16) {
            // 頭像和基本資訊
            HStack {
                AsyncImage(url: URL(string: user.avatarURL)) { image in
                    image
                        .resizable()
                        .scaledToFill()
                } placeholder: {
                    Circle()
                        .fill(.gray.opacity(0.3))
                }
                .frame(width: 80, height: 80)
                .clipShape(Circle())
                
                VStack(alignment: .leading) {
                    Text(user.name)
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Text(user.title)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                    
                    Text(user.location)
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                
                Spacer()
            }
            
            // 統計資訊
            HStack {
                StatView(title: "追蹤者", value: "\(user.followers)")
                Spacer()
                StatView(title: "追蹤中", value: "\(user.following)")
                Spacer()
                StatView(title: "貼文", value: "\(user.posts)")
            }
            
            // 動作按鈕
            HStack {
                Button("追蹤") { }
                    .buttonStyle(.borderedProminent)
                    .frame(maxWidth: .infinity)
                
                Button("訊息") { }
                    .buttonStyle(.bordered)
                    .frame(maxWidth: .infinity)
            }
        }
        .padding()
        .background(.white)
        .cornerRadius(16)
        .shadow(radius: 4)
    }
}

struct StatView: View {
    let title: String
    let value: String
    
    var body: some View {
        VStack(spacing: 4) {
            Text(value)
                .font(.headline)
                .fontWeight(.bold)
            
            Text(title)
                .font(.caption)
                .foregroundColor(.secondary)
        }
    }
}
```

### HStack_Demo.swift - 水平佈局專家

#### 檔案位置
`SwiftUIDemo/Demo/Views/2_Container/HStack_Demo.swift`

#### 學習目標
- 掌握 HStack 水平佈局技巧
- 理解水平對齊和分布
- 學會彈性空間使用
- 熟悉工具列設計模式

#### 核心概念詳解

**1. 基本 HStack 使用**
```swift
HStack {
    Text("左側")
    Text("中間")
    Text("右側")
}
```

**2. 垂直對齊控制**
```swift
HStack(alignment: .top) {        // 頂部對齊
    Text("短")
    Text("這是一段\n比較長的\n多行文字")
    Text("短")
}

HStack(alignment: .bottom) {     // 底部對齊
    Text("短")
    Text("這是一段\n比較長的\n多行文字")
    Text("短")
}

HStack(alignment: .center) {     // 居中對齊（預設）
    Text("短")
    Text("這是一段\n比較長的\n多行文字")
    Text("短")
}
```

**3. Spacer 的使用**
```swift
HStack {
    Text("左側")
    Spacer()                     // 推送到兩端
    Text("右側")
}

HStack {
    Text("左")
    Spacer()
    Text("中")
    Spacer()
    Text("右")                   // 平均分布
}
```

**4. 彈性布局**
```swift
HStack {
    Text("固定")
        .frame(width: 80)
    
    Text("彈性內容，會根據可用空間調整")
        .frame(maxWidth: .infinity)
        .background(.gray.opacity(0.2))
    
    Text("固定")
        .frame(width: 80)
}
```

#### 進階功能

**1. 導航列設計**
```swift
struct NavigationHeader: View {
    let title: String
    let leftAction: () -> Void
    let rightAction: () -> Void
    
    var body: some View {
        HStack {
            Button(action: leftAction) {
                Image(systemName: "chevron.left")
                    .font(.title2)
            }
            
            Spacer()
            
            Text(title)
                .font(.headline)
                .fontWeight(.semibold)
            
            Spacer()
            
            Button(action: rightAction) {
                Image(systemName: "ellipsis")
                    .font(.title2)
            }
        }
        .padding(.horizontal)
        .frame(height: 44)
    }
}
```

**2. 工具列設計**
```swift
struct ToolBar: View {
    var body: some View {
        HStack(spacing: 20) {
            ToolBarButton(icon: "square.and.arrow.up", action: { })
            ToolBarButton(icon: "heart", action: { })
            ToolBarButton(icon: "message", action: { })
            
            Spacer()
            
            ToolBarButton(icon: "bookmark", action: { })
        }
        .padding(.horizontal)
        .padding(.vertical, 8)
    }
}

struct ToolBarButton: View {
    let icon: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(systemName: icon)
                .font(.title2)
                .foregroundColor(.primary)
        }
    }
}
```

**3. 標籤系統**
```swift
struct TagView: View {
    let tags: [String]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 8) {
                ForEach(tags, id: \.self) { tag in
                    Text(tag)
                        .padding(.horizontal, 12)
                        .padding(.vertical, 6)
                        .background(.blue.opacity(0.1))
                        .foregroundColor(.blue)
                        .cornerRadius(16)
                }
            }
            .padding(.horizontal)
        }
    }
}
```

#### 延伸練習

**練習1：評分和評論條**
```swift
struct ReviewBar: View {
    let rating: Double
    let reviewCount: Int
    let onShowReviews: () -> Void
    
    var body: some View {
        HStack(spacing: 12) {
            // 星級評分
            HStack(spacing: 2) {
                ForEach(1...5, id: \.self) { star in
                    Image(systemName: star <= Int(rating.rounded()) ? "star.fill" : "star")
                        .foregroundColor(.yellow)
                        .font(.caption)
                }
            }
            
            Text(String(format: "%.1f", rating))
                .font(.caption)
                .fontWeight(.medium)
            
            Text("(\(reviewCount) 評論)")
                .font(.caption)
                .foregroundColor(.secondary)
            
            Spacer()
            
            Button("查看評論") {
                onShowReviews()
            }
            .font(.caption)
            .buttonStyle(.borderedProminent)
            .controlSize(.small)
        }
        .padding(.horizontal)
        .padding(.vertical, 8)
        .background(.gray.opacity(0.05))
        .cornerRadius(8)
    }
}
```

### ZStack_Demo.swift - 層疊佈局藝術

#### 檔案位置
`SwiftUIDemo/Demo/Views/2_Container/ZStack_Demo.swift`

#### 學習目標
- 掌握 ZStack 層疊佈局原理
- 理解視圖層級和深度管理
- 學會覆蓋效果和徽章設計
- 熟悉複雜視覺效果實現

#### 核心概念詳解

**1. 基本 ZStack 使用**
```swift
ZStack {
    Rectangle()
        .fill(.blue)
        .frame(width: 100, height: 100)
    
    Text("覆蓋文字")
        .foregroundColor(.white)
        .fontWeight(.bold)
}
```

**2. 對齊控制**
```swift
ZStack(alignment: .topLeading) {
    Rectangle()
        .fill(.gray.opacity(0.3))
        .frame(width: 200, height: 150)
    
    Text("左上角")
        .padding(8)
        .background(.white)
        .cornerRadius(4)
}

ZStack(alignment: .bottomTrailing) {
    Rectangle()
        .fill(.gray.opacity(0.3))
        .frame(width: 200, height: 150)
    
    Text("右下角")
        .padding(8)
        .background(.white)
        .cornerRadius(4)
}
```

**3. 層級控制**
```swift
ZStack {
    Circle()
        .fill(.red)
        .frame(width: 100, height: 100)
        .zIndex(1)  // 較高層級
    
    Circle()
        .fill(.blue)
        .frame(width: 80, height: 80)
        .offset(x: 20, y: 20)
        .zIndex(2)  // 最高層級
    
    Circle()
        .fill(.green)
        .frame(width: 60, height: 60)
        .offset(x: -20, y: -20)
        .zIndex(0)  // 最低層級
}
```

#### 進階功能

**1. 徽章系統**
```swift
struct BadgedView<Content: View>: View {
    let content: Content
    let badgeCount: Int
    
    init(badgeCount: Int, @ViewBuilder content: () -> Content) {
        self.badgeCount = badgeCount
        self.content = content()
    }
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            content
            
            if badgeCount > 0 {
                Text("\(badgeCount)")
                    .font(.caption2)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(4)
                    .background(.red)
                    .clipShape(Circle())
                    .offset(x: 8, y: -8)
            }
        }
    }
}

// 使用
BadgedView(badgeCount: 3) {
    Image(systemName: "bell")
        .font(.title)
        .foregroundColor(.blue)
        .frame(width: 44, height: 44)
        .background(.gray.opacity(0.1))
        .clipShape(Circle())
}
```

**2. 載入覆蓋層**
```swift
struct LoadingOverlay: View {
    let isLoading: Bool
    let message: String
    
    var body: some View {
        ZStack {
            if isLoading {
                Color.black.opacity(0.3)
                    .ignoresSafeArea()
                
                VStack(spacing: 16) {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle(tint: .white))
                        .scaleEffect(1.5)
                    
                    Text(message)
                        .foregroundColor(.white)
                        .fontWeight(.medium)
                }
                .padding(24)
                .background(.black.opacity(0.7))
                .cornerRadius(12)
            }
        }
        .animation(.easeInOut, value: isLoading)
    }
}
```

**3. 浮動動作按鈕**
```swift
struct FloatingActionOverlay: View {
    let action: () -> Void
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Color.clear
            
            Button(action: action) {
                Image(systemName: "plus")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 56, height: 56)
                    .background(.blue)
                    .clipShape(Circle())
                    .shadow(color: .black.opacity(0.3), radius: 4, x: 0, y: 2)
            }
            .padding(.trailing, 16)
            .padding(.bottom, 16)
        }
    }
}
```

#### 延伸練習

**練習1：圖片覆蓋資訊**
```swift
struct ImageOverlayCard: View {
    let imageURL: String
    let title: String
    let subtitle: String
    let category: String
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            // 背景圖片
            AsyncImage(url: URL(string: imageURL)) { image in
                image
                    .resizable()
                    .scaledToFill()
            } placeholder: {
                Rectangle()
                    .fill(.gray.opacity(0.3))
            }
            .frame(height: 200)
            .clipped()
            
            // 漸層覆蓋
            LinearGradient(
                colors: [.clear, .black.opacity(0.7)],
                startPoint: .top,
                endPoint: .bottom
            )
            
            // 文字資訊
            VStack(alignment: .leading, spacing: 4) {
                Text(category.uppercased())
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundColor(.white.opacity(0.8))
                
                Text(title)
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Text(subtitle)
                    .font(.subheadline)
                    .foregroundColor(.white.opacity(0.9))
            }
            .padding()
            
            // 類別標籤
            ZStack(alignment: .topTrailing) {
                Color.clear
                
                Text(category)
                    .font(.caption2)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background(.black.opacity(0.6))
                    .cornerRadius(12)
                    .padding(8)
            }
        }
        .cornerRadius(12)
        .shadow(radius: 4)
    }
}
```

---

## 繼續為其他檔案添加詳細指南...

*[由於篇幅限制，這裡只展示了部分檔案的詳細指南。完整版本應該包含所有 Demo 檔案的詳細說明，包括 List_Demo、ScrollView_Demo、Grid_Demo、Toggle_Demo、TextField_Demo、Form_Demo 等等。每個檔案都應該有類似的詳細結構：學習目標、核心概念詳解、重要語法說明、常見錯誤、延伸練習等。]*

---

## 學習檢核表

### 每個階段完成後的自我檢核

#### 第一階段檢核 ✅
- [ ] 能獨立建立基本的 SwiftUI 視圖
- [ ] 理解宣告式 UI 和命令式 UI 的差別
- [ ] 熟練使用 Xcode Preview 功能
- [ ] 能解釋 View 協議的作用

#### 第二階段檢核 ✅
- [ ] 掌握所有基礎 UI 元件的使用
- [ ] 能建立有吸引力的文字和圖片展示
- [ ] 理解按鈕互動和事件處理
- [ ] 熟悉顏色系統和圖形繪製

#### 第三階段檢核 ✅
- [ ] 能設計複雜的佈局結構
- [ ] 理解不同容器的適用場景
- [ ] 掌握對齊和間距控制技巧
- [ ] 能建立響應式佈局

---

*本文件將持續更新，為每個 Demo 檔案提供完整的學習指導。建議搭配實際程式碼練習，循序漸進地掌握 SwiftUI 開發技能。*