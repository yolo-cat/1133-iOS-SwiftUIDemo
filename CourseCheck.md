# SwiftUI 初學者課程設計

## 課程概述

### 課程介紹與目標
本課程旨在為初學者提供完整的 SwiftUI 學習路徑，從基礎概念到實戰專案開發。透過循序漸進的學習方式，讓學員能夠掌握現代 iOS 應用程式開發的核心技能。

**主要學習目標：**
- 理解 SwiftUI 宣告式 UI 的設計理念
- 掌握 SwiftUI 的基礎與進階元件使用
- 學會狀態管理與資料流控制
- 能夠獨立完成完整的 iOS 應用程式開發

### 適用對象
- 有基礎程式設計經驗的初學者
- 想要學習 iOS 開發的程式設計師
- 希望從 UIKit 轉換到 SwiftUI 的開發者
- 對行動應用程式開發有興趣的學習者

### 學習前準備
- 具備基本的 Swift 程式語言知識
- 安裝 Xcode 15.0 或以上版本
- 熟悉基本的程式設計概念（變數、函數、類別等）
- 準備 macOS 開發環境

### 課程特色
- **實作導向**：每個概念都配有實際程式碼範例
- **循序漸進**：從基礎概念逐步進階到完整專案
- **多樣化練習**：涵蓋不同類型的應用場景
- **完整專案**：三個實戰專案強化學習成果

## 課程架構

### 第一階段：SwiftUI 基礎概念 (1-2週)

**學習目標：**
- 理解 SwiftUI 的核心概念與設計哲學
- 掌握宣告式 UI 的思維模式
- 熟悉 Xcode 開發環境與 Preview 功能
- 學會基本的 View 結構與組織方式

**核心概念：**
- SwiftUI vs UIKit 的根本差異
- View 協議的重要性與實作方式
- 宣告式編程概念與優勢
- SwiftUI 的生命週期管理
- Preview 功能的使用與除錯

**對應檔案：**
- `ContentView.swift` - SwiftUI 應用程式的入口點

**實作練習：**
- 建立第一個 SwiftUI View
- 理解並修改基本的 UI 結構
- 練習使用 Xcode Preview 功能

**常見問題：**
- Preview 無法正常顯示
- 編譯錯誤的排除
- View 結構的理解困難

### 第二階段：基礎元件學習 (2-3週)

**學習目標：**
- 掌握基本 UI 元件的使用方法
- 理解文字與圖片的顯示與格式化
- 學會基本的使用者互動元件
- 熟悉顏色系統與視覺設計

**核心概念：**
- Text 的多樣化格式與樣式設定
- Image 的載入、顯示與處理方式
- Button 的動作綁定與樣式客製化
- Color 系統與自定義顏色應用
- SF Symbols 的使用與整合
- 基本圖形的繪製與應用

**對應檔案：**
- `Demo/Views/1_Primitive/Text_Demo.swift` - 文字顯示與格式化
- `Demo/Views/1_Primitive/Image_Demo.swift` - 圖片處理與顯示
- `Demo/Views/3_Control/Button_Demo.swift` - 按鈕互動設計
- `Demo/Views/1_Primitive/Circle_Demo.swift` - 基礎圖形繪製
- `Demo/Views/1_Primitive/Color_Demo.swift` - 顏色系統應用

**實作練習：**
- 創建個人名片應用程式
- 設計多樣化的文字排版
- 製作互動式按鈕組合
- 實作圖片展示功能

**常見問題：**
- 圖片資源無法正確載入
- 按鈕動作沒有反應
- 文字格式設定不生效
- 顏色顯示異常

### 第三階段：容器與佈局 (2-3週)

**學習目標：**
- 掌握各種佈局容器的特性與使用
- 理解 SwiftUI 的佈局系統運作原理
- 學會組織複雜的 UI 結構
- 熟悉響應式設計的實作方式

**核心概念：**
- Stack 容器的特性與靈活運用
- List 的資料顯示與自定義
- ScrollView 的滾動處理與優化
- Grid 的網格佈局設計
- 佈局修飾器的作用與組合
- 空間分配與約束系統

**對應檔案：**
- `Demo/Views/2_Container/VStack_Demo.swift` - 垂直佈局設計
- `Demo/Views/2_Container/HStack_Demo.swift` - 水平佈局設計
- `Demo/Views/2_Container/ZStack_Demo.swift` - 層疊佈局設計
- `Demo/Views/2_Container/List_Demo.swift` - 列表容器應用
- `Demo/Views/2_Container/ScrollView_Demo.swift` - 滾動視圖實作
- `Demo/Views/2_Container/Grid_Demo.swift` - 網格佈局設計

**實作練習：**
- 設計商品展示頁面
- 建立新聞資訊列表
- 製作相片畫廊應用
- 實作複雜的表格佈局

**常見問題：**
- 佈局不符合預期效果
- 元件重疊或位置錯誤
- 滾動效能問題
- 響應式設計失效

### 第四階段：互動與狀態管理 (3-4週)

**學習目標：**
- 理解 SwiftUI 的狀態管理機制
- 掌握資料綁定的概念與實作
- 學會處理各種使用者輸入
- 熟悉手勢識別與響應

**核心概念：**
- @State 的狀態管理原理
- @Binding 的資料綁定機制
- 表單元件的設計與驗證
- 手勢識別與處理技巧
- 資料流向的理解與控制
- 使用者互動的回饋設計

**對應檔案：**
- `Demo/Views/3_Control/Toggle_Demo.swift` - 開關控制元件
- `Demo/Views/3_Control/TextField_Demo.swift` - 文字輸入處理
- `Demo/Views/3_Control/Form_Demo.swift` - 表單設計實作
- `Demo/DataFlow/DrinkTracker.swift` - 狀態管理實例
- `Demo/ViewModifiers/Gestures/Tap_Demo.swift` - 點擊手勢處理
- `Demo/ViewModifiers/Gestures/Drag_Demo.swift` - 拖拽手勢實作

**實作練習：**
- 建立計算器應用程式
- 設計使用者註冊表單
- 製作互動式遊戲
- 實作設定頁面

**常見問題：**
- 狀態更新沒有生效
- 資料綁定設定錯誤
- 表單驗證邏輯問題
- 手勢衝突處理

### 第五階段：進階功能 (3-4週)

**學習目標：**
- 掌握動畫的設計與實作技巧
- 理解導航系統的架構與使用
- 學會模態視圖的呈現方式
- 熟悉觀察者模式的應用

**核心概念：**
- 動畫的類型與實作技巧
- 導航堆疊的管理與控制
- 模態視圖的呈現與關閉
- 觀察者模式的實際應用
- 環境值的傳遞與使用
- 複雜 UI 的組織與管理

**對應檔案：**
- `Demo/Animation/SimpleAnimation.swift` - 基礎動畫實作
- `Demo/Animation/TextAnimationView.swift` - 文字動畫設計
- `Demo/Navigation/NavigationStack_Demo.swift` - 導航系統應用
- `Demo/Navigation/Sheet_Demo.swift` - 模態視圖實作
- `Demo/Navigation/Popover_Demo.swift` - 彈出視圖設計
- `Demo/Navigation/TabView_Demo.swift` - 分頁介面實作
- `Demo/Observation/Counter.swift` - 觀察者模式實例
- `Demo/Observation/CounterEnvironment.swift` - 環境物件使用
- `Demo/DataFlow/Environment_Demo.swift` - 環境值傳遞

**實作練習：**
- 製作天氣預報應用程式
- 建立多頁面導航應用
- 設計動畫效果展示
- 實作資料共享機制

**常見問題：**
- 動畫效果不順暢
- 導航邏輯錯誤
- 環境值傳遞失敗
- 效能優化需求

### 第六階段：實戰專案 (4-6週)

**學習目標：**
- 整合前面所學的所有概念
- 完成完整的應用程式開發
- 學會專案架構設計原則
- 掌握實際開發的最佳實踐

**核心概念：**
- MVVM 架構模式的應用
- 資料持久化的實作方式
- 網路請求的處理技巧
- 錯誤處理機制的設計
- 使用者體驗的優化
- 程式碼組織與維護

**實戰專案：**

#### MoodTracker - 情緒追蹤器
- **專案目標：** 建立個人情緒記錄與分析應用
- **技術重點：** 狀態管理、資料儲存、動畫效果
- **對應檔案：** `MoodTracker/` 目錄下所有檔案
- **學習重點：**
  - 複雜狀態的管理與更新
  - 使用者體驗的設計考量
  - 資料視覺化的實作方式

#### TaskManager - 任務管理器
- **專案目標：** 開發功能完整的待辦事項管理應用
- **技術重點：** 導航結構、表單處理、列表操作
- **對應檔案：** `TaskManager/` 目錄下所有檔案
- **學習重點：**
  - 複雜導航結構的設計
  - CRUD 操作的完整實作
  - 資料組織與管理策略

#### TheOneThing - 專注任務應用
- **專案目標：** 創建幫助使用者專注的任務管理工具
- **技術重點：** 完整應用架構、互動設計、資料流管理
- **對應檔案：** `TheOneThing/` 目錄下所有檔案
- **學習重點：**
  - 完整應用程式的架構設計
  - 進階使用者互動功能
  - 效能優化與使用者體驗

**實作練習：**
- 選擇一個專案進行深度開發
- 添加個人化功能特色
- 實作額外的功能模組
- 優化使用者介面設計

**常見問題：**
- 專案架構設計困難
- 程式碼組織混亂
- 效能問題的識別與解決
- 使用者體驗的平衡考量

## 學習路徑

### 時間規劃表

| 週次 | 學習內容 | 重點檔案 | 檢核點 | 預期成果 |
|------|----------|----------|--------|----------|
| 1-2 | SwiftUI 基礎概念 | `ContentView.swift` | 理解宣告式 UI 概念 | 能建立基本 SwiftUI View |
| 3-5 | 基礎元件學習 | Text, Image, Button, Color Demos | 完成個人名片 App | 掌握基本 UI 元件使用 |
| 6-8 | 容器與佈局 | Stack, List, Grid Demos | 設計商品展示頁面 | 熟悉佈局系統與容器 |
| 9-12 | 互動與狀態管理 | State, Binding, Form, Gesture Demos | 建立計算器 App | 理解狀態管理機制 |
| 13-16 | 進階功能 | Animation, Navigation, Observation Demos | 製作天氣 App | 掌握進階開發技巧 |
| 17-22 | 實戰專案開發 | 完整專案檔案 | 完成選定專案 | 獨立開發完整應用 |

### 每日學習建議

#### 第1-2週：基礎概念建立期
- **學習時間：** 每日 1-2 小時
- **學習重點：** 理解概念為主，少量實作
- **學習方法：**
  - 閱讀官方文件與教學資源
  - 嘗試修改範例程式碼
  - 使用 Xcode Preview 功能實驗

#### 第3-8週：技能建構期
- **學習時間：** 每日 2-3 小時
- **學習重點：** 大量實作練習，熟悉各種元件
- **學習方法：**
  - 逐一練習每個 Demo 檔案
  - 嘗試修改與組合不同元件
  - 建立小型練習專案

#### 第9-16週：能力提升期
- **學習時間：** 每日 3-4 小時
- **學習重點：** 深入學習進階功能與架構設計
- **學習方法：**
  - 研究複雜的狀態管理案例
  - 實作中等規模的應用程式
  - 學習最佳實踐與設計模式

#### 第17-22週：專案實戰期
- **學習時間：** 每日 4-5 小時
- **學習重點：** 專注於完整專案的開發與優化
- **學習方法：**
  - 選擇一個實戰專案深度開發
  - 添加個人化的功能特色
  - 優化程式碼品質與使用者體驗

### 學習策略建議

#### 循序漸進策略
1. **先理解後實作：** 每個新概念都要先理解原理再動手寫程式
2. **小步驟前進：** 不要急於完成複雜功能，從簡單開始逐步增加複雜度
3. **反覆練習：** 重要概念需要多次練習才能真正掌握
4. **及時複習：** 定期回顧之前學過的內容，加深記憶

#### 實作導向策略
1. **邊學邊做：** 每學習一個概念就立即實作相關練習
2. **問題導向：** 遇到實際問題時主動尋找解決方案
3. **項目驅動：** 以完成具體項目為目標來推動學習進度
4. **代碼重構：** 定期重構和優化自己的程式碼

## 檔案對應表

### 基礎元件檔案 (第2階段)
| 檔案名稱 | 學習重點 | 難度等級 | 預估時間 |
|----------|----------|----------|----------|
| `Text_Demo.swift` | 文字顯示與格式化技巧 | ⭐⭐ | 2-3 小時 |
| `Image_Demo.swift` | 圖片載入與處理方式 | ⭐⭐ | 2-3 小時 |
| `Button_Demo.swift` | 按鈕設計與互動實作 | ⭐⭐ | 2-3 小時 |
| `Circle_Demo.swift` | 基礎圖形繪製技巧 | ⭐⭐ | 1-2 小時 |
| `Color_Demo.swift` | 顏色系統與主題設計 | ⭐⭐ | 1-2 小時 |

### 容器佈局檔案 (第3階段)
| 檔案名稱 | 學習重點 | 難度等級 | 預估時間 |
|----------|----------|----------|----------|
| `VStack_Demo.swift` | 垂直佈局設計原則 | ⭐⭐ | 2-3 小時 |
| `HStack_Demo.swift` | 水平佈局設計原則 | ⭐⭐ | 2-3 小時 |
| `ZStack_Demo.swift` | 層疊佈局設計技巧 | ⭐⭐⭐ | 3-4 小時 |
| `List_Demo.swift` | 列表容器進階應用 | ⭐⭐⭐ | 3-4 小時 |
| `ScrollView_Demo.swift` | 滾動視圖優化技巧 | ⭐⭐⭐ | 3-4 小時 |
| `Grid_Demo.swift` | 網格佈局設計方式 | ⭐⭐⭐⭐ | 4-5 小時 |

### 互動控制檔案 (第4階段)
| 檔案名稱 | 學習重點 | 難度等級 | 預估時間 |
|----------|----------|----------|----------|
| `Toggle_Demo.swift` | 開關控制元件應用 | ⭐⭐ | 2-3 小時 |
| `TextField_Demo.swift` | 文字輸入處理技巧 | ⭐⭐⭐ | 3-4 小時 |
| `Form_Demo.swift` | 表單設計與驗證 | ⭐⭐⭐⭐ | 4-5 小時 |
| `Tap_Demo.swift` | 點擊手勢識別處理 | ⭐⭐⭐ | 2-3 小時 |
| `Drag_Demo.swift` | 拖拽手勢實作技巧 | ⭐⭐⭐⭐ | 3-4 小時 |

### 狀態管理檔案 (第4階段)
| 檔案名稱 | 學習重點 | 難度等級 | 預估時間 |
|----------|----------|----------|----------|
| `DrinkTracker.swift` | @State 和 @Binding 實例 | ⭐⭐⭐⭐ | 4-6 小時 |
| `Counter.swift` | @Observable 模式應用 | ⭐⭐⭐⭐⭐ | 5-6 小時 |
| `CounterEnvironment.swift` | 環境物件使用方式 | ⭐⭐⭐⭐⭐ | 5-6 小時 |
| `Environment_Demo.swift` | 環境值傳遞機制 | ⭐⭐⭐⭐ | 4-5 小時 |

### 進階功能檔案 (第5階段)
| 檔案名稱 | 學習重點 | 難度等級 | 預估時間 |
|----------|----------|----------|----------|
| `SimpleAnimation.swift` | 基礎動畫實作技巧 | ⭐⭐⭐ | 3-4 小時 |
| `TextAnimationView.swift` | 文字動畫設計方式 | ⭐⭐⭐⭐ | 4-5 小時 |
| `NavigationStack_Demo.swift` | 導航系統架構設計 | ⭐⭐⭐⭐⭐ | 5-6 小時 |
| `Sheet_Demo.swift` | 模態視圖實作技巧 | ⭐⭐⭐⭐ | 3-4 小時 |
| `Popover_Demo.swift` | 彈出視圖設計方式 | ⭐⭐⭐⭐ | 3-4 小時 |
| `TabView_Demo.swift` | 分頁介面設計原則 | ⭐⭐⭐ | 2-3 小時 |

### 實戰專案檔案 (第6階段)
| 專案名稱 | 學習重點 | 難度等級 | 預估時間 |
|----------|----------|----------|----------|
| `MoodTracker/` | 情緒追蹤與資料管理 | ⭐⭐⭐⭐⭐ | 20-30 小時 |
| `TaskManager/` | 任務管理與導航設計 | ⭐⭐⭐⭐⭐ | 25-35 小時 |
| `TheOneThing/` | 完整應用架構設計 | ⭐⭐⭐⭐⭐ | 30-40 小時 |

## 教學重點

### 每個檔案的教學結構

每個 Demo 檔案都遵循以下教學結構，確保學習者能夠系統性地掌握知識：

#### 1. 明確的學習目標
- **知識目標：** 明確說明該檔案要學習的核心概念
- **技能目標：** 具體描述學習者應該掌握的實作技能
- **應用目標：** 說明所學知識在實際開發中的應用場景

#### 2. 核心概念說明
- **理論基礎：** 解釋相關的理論概念與原理
- **設計模式：** 說明 SwiftUI 中相關的設計模式
- **最佳實踐：** 提供業界認可的最佳實踐方法

#### 3. 程式碼詳細解析
- **逐行解釋：** 對重要的程式碼行進行詳細說明
- **語法說明：** 解釋特殊的 Swift 語法與 SwiftUI 特性
- **參數說明：** 詳細說明各種參數的作用與使用方式

#### 4. 常見錯誤提醒
- **編譯錯誤：** 列出常見的編譯錯誤與解決方法
- **執行時錯誤：** 說明可能出現的執行時問題
- **邏輯錯誤：** 提醒容易犯的邏輯錯誤

#### 5. 延伸練習建議
- **基礎練習：** 提供簡單的修改練習
- **進階練習：** 建議更具挑戰性的擴展練習
- **創意練習：** 鼓勵學習者發揮創意的開放性練習

#### 6. 相關概念連結
- **前置知識：** 說明需要具備的前置知識
- **後續學習：** 指出接下來應該學習的相關概念
- **交叉參考：** 提供其他相關檔案的參考連結

### 重點概念深度解析

#### SwiftUI 核心概念
1. **宣告式 UI 的本質**
   - 與命令式 UI 的根本差異
   - 宣告式思維的培養方式
   - 實際開發中的應用優勢

2. **View 協議的重要性**
   - View 協議的設計理念
   - body 屬性的作用機制
   - 自定義 View 的最佳實踐

3. **狀態管理的核心原理**
   - 單一資料來源原則
   - 狀態向下傳遞，事件向上傳遞
   - 不同狀態管理方式的選擇原則

#### 進階開發技巧
1. **效能優化策略**
   - View 的重繪機制理解
   - 避免不必要的重新計算
   - 大量資料的處理技巧

2. **架構設計原則**
   - MVVM 架構的實際應用
   - 程式碼組織與模組化
   - 可測試性的考量

3. **使用者體驗設計**
   - 動畫與轉場效果的適當使用
   - 響應式設計的實作方式
   - 無障礙功能的整合

## 實作練習

### 階段性練習專案

#### 第2階段練習：個人名片應用程式
**專案目標：** 建立一個展示個人資訊的數位名片應用

**功能需求：**
- 顯示個人照片與基本資訊
- 使用不同的文字樣式展示職業與聯絡資訊
- 添加社群媒體連結按鈕
- 使用適當的色彩主題

**技能練習：**
- Text 元件的多樣化使用
- Image 的載入與樣式設定
- Button 的設計與動作綁定
- Color 系統的應用

**預期成果：**
- 一個視覺吸引人的個人名片
- 掌握基本 UI 元件的使用方法
- 理解樣式設定的基本原則

#### 第3階段練習：商品展示頁面
**專案目標：** 設計一個電商應用的商品展示介面

**功能需求：**
- 使用 Grid 佈局展示商品列表
- 實作可滾動的商品詳情頁面
- 添加商品分類導航
- 設計購物車功能按鈕

**技能練習：**
- 各種 Stack 容器的組合使用
- List 與 Grid 的進階應用
- ScrollView 的優化技巧
- 複雜佈局的設計原則

**預期成果：**
- 專業級的商品展示介面
- 熟悉複雜佈局的設計方法
- 理解響應式設計的重要性

#### 第4階段練習：計算器應用程式
**專案目標：** 開發一個功能完整的計算器應用

**功能需求：**
- 基本數學運算功能
- 清除與回退功能
- 計算歷史記錄
- 美觀的使用者介面

**技能練習：**
- @State 狀態管理的深度應用
- Button 動作的邏輯處理
- 複雜的資料流控制
- 錯誤處理機制

**預期成果：**
- 功能完整的計算器應用
- 掌握狀態管理的核心技能
- 理解使用者互動的設計原則

#### 第5階段練習：天氣預報應用程式
**專案目標：** 建立一個具有動畫效果的天氣應用

**功能需求：**
- 當前天氣資訊顯示
- 一週天氣預報
- 多城市天氣切換
- 天氣變化動畫效果

**技能練習：**
- 動畫效果的設計與實作
- 導航系統的複雜應用
- 環境值的傳遞使用
- 進階 UI 設計技巧

**預期成果：**
- 具有專業動畫效果的天氣應用
- 掌握進階 SwiftUI 開發技能
- 理解複雜應用的架構設計

### 創意挑戰練習

#### 個人化挑戰
1. **客製化主題系統**
   - 實作深色/淺色模式切換
   - 設計多種色彩主題選擇
   - 添加字體大小調整功能

2. **動畫效果集合**
   - 創建各種過場動畫
   - 實作互動式動畫元件
   - 設計載入動畫效果

3. **手勢互動體驗**
   - 實作多點觸控手勢
   - 設計拖拽排序功能
   - 添加手勢快捷操作

#### 團隊協作練習
1. **程式碼審查**
   - 學習程式碼審查的標準
   - 練習給予建設性回饋
   - 改進程式碼品質

2. **功能模組化**
   - 將功能拆分為獨立模組
   - 設計可重用的元件
   - 建立元件庫

3. **專案協作**
   - 使用版本控制系統
   - 建立專案文件
   - 實作團隊開發流程

## 評估檢核

### 階段性評估標準

#### 知識理解評估 (30%)
**評估方式：**
- 概念測驗與問答
- 程式碼閱讀理解
- 設計原則解釋

**評估標準：**
- **優秀 (90-100%)：** 能清楚解釋所有核心概念，並能舉例說明
- **良好 (80-89%)：** 理解大部分概念，偶有小錯誤
- **及格 (70-79%)：** 基本理解核心概念，但深度不足
- **需改進 (<70%)：** 概念理解不清楚，需要額外輔導

#### 實作技能評估 (50%)
**評估方式：**
- 程式碼實作測試
- 功能實現完整度
- 程式碼品質評估

**評估標準：**
- **優秀 (90-100%)：** 程式碼結構清晰，功能完整，遵循最佳實踐
- **良好 (80-89%)：** 功能基本完整，程式碼品質良好
- **及格 (70-79%)：** 能實現基本功能，但程式碼需要改進
- **需改進 (<70%)：** 功能實現不完整，程式碼存在明顯問題

#### 專案綜合評估 (20%)
**評估方式：**
- 完整專案開發
- 創新功能設計
- 使用者體驗評估

**評估標準：**
- **優秀 (90-100%)：** 專案完整度高，有創新特色，使用者體驗優秀
- **良好 (80-89%)：** 專案功能完整，使用者體驗良好
- **及格 (70-79%)：** 專案基本完成，功能可用
- **需改進 (<70%)：** 專案不完整，存在明顯缺陷

### 學習成果檢驗

#### 每週檢核點
**第1-2週檢核：**
- [ ] 能說明 SwiftUI 與 UIKit 的差異
- [ ] 理解 View 協議的作用
- [ ] 能建立基本的 SwiftUI View
- [ ] 熟悉 Xcode Preview 功能

**第3-5週檢核：**
- [ ] 掌握 Text 的格式化技巧
- [ ] 能處理圖片載入與顯示
- [ ] 理解 Button 的動作綁定
- [ ] 熟悉色彩系統的使用

**第6-8週檢核：**
- [ ] 能靈活使用各種 Stack 容器
- [ ] 理解 List 的進階功能
- [ ] 掌握 ScrollView 的使用技巧
- [ ] 能設計複雜的網格佈局

**第9-12週檢核：**
- [ ] 理解 @State 狀態管理機制
- [ ] 掌握 @Binding 資料綁定
- [ ] 能設計完整的表單功能
- [ ] 理解手勢識別與處理

**第13-16週檢核：**
- [ ] 能實作流暢的動畫效果
- [ ] 理解導航系統的架構
- [ ] 掌握環境值的使用方式
- [ ] 能設計複雜的使用者互動

**第17-22週檢核：**
- [ ] 完成一個完整的實戰專案
- [ ] 理解 MVVM 架構設計
- [ ] 能獨立解決開發問題
- [ ] 掌握專案部署與發布

#### 最終能力檢驗

**技術能力檢驗：**
1. **獨立開發能力**
   - 能從零開始設計與實作完整應用
   - 具備問題分析與解決能力
   - 能選擇適當的技術方案

2. **程式碼品質**
   - 程式碼結構清晰且易於維護
   - 遵循 Swift 與 SwiftUI 的最佳實踐
   - 具備良好的註釋與文件習慣

3. **使用者體驗設計**
   - 理解使用者需求與行為模式
   - 能設計直觀且美觀的使用者介面
   - 注重應用程式的效能與響應速度

**綜合素養檢驗：**
1. **學習能力**
   - 能主動學習新技術與工具
   - 具備獨立解決問題的能力
   - 能從錯誤中學習並改進

2. **創新思維**
   - 能提出創新的功能設計
   - 具備批判性思考能力
   - 能結合不同技術解決複雜問題

3. **專業素養**
   - 具備良好的程式設計習慣
   - 理解軟體開發的完整流程
   - 能與團隊協作完成專案

## 附錄資源

### 官方學習資源

#### Apple 官方文件
1. **SwiftUI Tutorials**
   - [SwiftUI Essentials](https://developer.apple.com/tutorials/swiftui/)
   - [Building Lists and Navigation](https://developer.apple.com/tutorials/swiftui/building-lists-and-navigation)
   - [Handling User Input](https://developer.apple.com/tutorials/swiftui/handling-user-input)

2. **WWDC 影片資源**
   - WWDC 2023: What's new in SwiftUI
   - WWDC 2022: Swift UI State and Data Flow
   - WWDC 2021: What's new in SwiftUI

3. **技術文件**
   - [SwiftUI Framework Documentation](https://developer.apple.com/documentation/swiftui/)
   - [Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/)

### 補充學習材料

#### 推薦書籍
1. **《SwiftUI by Example》** by Paul Hudson
   - 適合初學者的實用指南
   - 包含大量程式碼範例
   - 涵蓋最新的 SwiftUI 功能

2. **《Thinking in SwiftUI》** by Oloff de Jong
   - 深入理解 SwiftUI 設計原理
   - 重點講解宣告式程式設計思維
   - 適合有一定基礎的開發者

3. **《iOS App Development with SwiftUI》** by Packt
   - 完整的 iOS 應用開發指南
   - 包含實戰專案案例
   - 涵蓋 App Store 發布流程

#### 線上學習平台
1. **Stanford CS193p**
   - 史丹佛大學的 iOS 開發課程
   - 免費且高品質的教學內容
   - 包含完整的課程影片與作業

2. **Ray Wenderlich**
   - 豐富的 iOS 開發教學資源
   - 定期更新的技術文章
   - 包含初級到進階的課程

3. **Hacking with Swift**
   - Paul Hudson 的免費學習網站
   - 100 Days of SwiftUI 挑戰
   - 大量實用的程式碼範例

### 開發工具與資源

#### 設計工具
1. **SF Symbols**
   - Apple 官方圖示庫
   - 與 SwiftUI 完美整合
   - 支援多種樣式與變化

2. **Figma**
   - 現代化的設計工具
   - 支援團隊協作
   - 豐富的 iOS 設計資源

3. **Sketch**
   - 專業的 UI 設計工具
   - 豐富的 iOS 設計套件
   - 支援原型設計功能

#### 開發輔助工具
1. **Xcode Previews**
   - 即時預覽功能
   - 支援多裝置預覽
   - 提高開發效率

2. **iOS Simulator**
   - 完整的 iOS 模擬環境
   - 支援多種裝置型號
   - 方便測試與除錯

3. **TestFlight**
   - Apple 官方測試平台
   - 支援 Beta 版本發布
   - 收集使用者回饋

### 社群與交流

#### 開發者社群
1. **Stack Overflow**
   - 最大的程式設計問答社群
   - 豐富的 SwiftUI 相關問題
   - 快速獲得技術支援

2. **Reddit r/SwiftUI**
   - 活躍的 SwiftUI 討論社群
   - 分享專案與經驗
   - 獲取最新技術動態

3. **Discord SwiftUI Community**
   - 即時的技術討論
   - 友善的學習環境
   - 定期的線上活動

#### 技術部落格
1. **SwiftUI Lab**
   - 深度的技術分析文章
   - 探討 SwiftUI 內部機制
   - 提供進階開發技巧

2. **Hacking with Swift Blog**
   - Paul Hudson 的技術部落格
   - 定期更新的 SwiftUI 教學
   - 實用的開發技巧分享

3. **Swift by Sundell**
   - John Sundell 的技術分享
   - 高品質的 Swift 與 SwiftUI 文章
   - 深入淺出的技術解析

### 持續學習建議

#### 跟上技術發展
1. **關注 WWDC**
   - 每年的新功能發布
   - 官方最佳實踐分享
   - 未來發展方向指引

2. **閱讀技術部落格**
   - 定期閱讀優質技術文章
   - 學習他人的經驗分享
   - 了解業界最新趨勢

3. **參與開源專案**
   - 貢獻程式碼到開源專案
   - 學習大型專案的架構設計
   - 提升程式碼品質

#### 建立學習習慣
1. **每日程式練習**
   - 保持程式設計手感
   - 嘗試新的功能與技巧
   - 建立個人專案作品集

2. **技術分享**
   - 撰寫學習心得與教學文章
   - 參與技術討論與分享
   - 幫助其他學習者

3. **網絡建立**
   - 參加開發者聚會與會議
   - 建立專業人脈網絡
   - 尋找學習夥伴與導師

---

**結語：**

這份課程設計提供了完整的 SwiftUI 學習路徑，從基礎概念到實戰專案，涵蓋了初學者所需的所有核心知識與技能。通過循序漸進的學習方式，配合豐富的實作練習與評估檢核，相信每位學習者都能夠成功掌握 SwiftUI 開發技能，並具備獨立開發 iOS 應用程式的能力。

記住，學習程式設計是一個持續的過程，重要的是保持好奇心與實踐精神。願這份課程設計能夠陪伴您在 SwiftUI 學習之路上取得成功！
=======
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
>>>>>>> main
