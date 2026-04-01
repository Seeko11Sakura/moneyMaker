# 打工搞钱神器 - 安卓打包指南

## 方法一：使用 Cordova（推荐）

### 1. 安装环境
```bash
# 安装 Node.js (如未安装)
# 下载地址: https://nodejs.org/

# 安装 Cordova
npm install -g cordova

# 安装 Java JDK 11 或 17
# 下载地址: https://adoptium.net/

# 安装 Android Studio
# 下载地址: https://developer.android.com/studio
# 配置 ANDROID_HOME 环境变量
```

### 2. 创建项目
```bash
# 创建 Cordova 项目
cordova create money-maker com.moneymaker.app "打工搞钱神器"

# 进入项目目录
cd money-maker

# 添加安卓平台
cordova platform add android
```

### 3. 添加网页文件
将 `index.html` 文件复制到 `www/` 目录下（替换原有的 index.html）

### 4. 构建应用
```bash
# 构建调试版 APK
cordova build android

# 构建发布版 APK（需要签名）
cordova build android --release
```

APK 文件位置：`platforms/android/app/build/outputs/apk/`

---

## 方法二：使用 Capacitor（现代化方案）

### 1. 安装环境
```bash
npm install -g @capacitor/cli
```

### 2. 创建项目
```bash
# 初始化项目
npm init -y

# 安装 Capacitor
npm install @capacitor/core @capacitor/cli @capacitor/android

# 初始化 Capacitor
npx cap init "打工搞钱神器" com.moneymaker.app

# 创建 www 目录并放入 index.html
mkdir www
# 复制 index.html 到 www 目录

# 添加安卓平台
npx cap add android
```

### 3. 同步和构建
```bash
# 同步网页文件
npx cap sync

# 打开 Android Studio 进行构建
npx cap open android
```

---

## 方法三：在线打包服务

### 1. GoNative (https://gonative.io/)
- 上传网页或输入网址
- 自动生成 APK
- 免费版有水印

### 2. WebIntoApp (https://webintoapp.com/)
- 免费将网站转换为 App
- 支持添加图标和启动页

### 3. AppGeyser (https://appsgeyser.com/)
- 可视化创建 App
- 支持网页包装

---

## 方法四：PWA 方式（最简单）

### 添加 manifest.json
在 index.html 同目录创建 `manifest.json`:
```json
{
  "name": "打工搞钱神器",
  "short_name": "搞钱神器",
  "start_url": "/index.html",
  "display": "standalone",
  "background_color": "#0a0a0a",
  "theme_color": "#FFD700",
  "icons": [
    {
      "src": "icon-192.png",
      "sizes": "192x192",
      "type": "image/png"
    },
    {
      "src": "icon-512.png",
      "sizes": "512x512",
      "type": "image/png"
    }
  ]
}
```

### 用户安装方式
1. 用手机浏览器打开网页
2. 点击浏览器菜单中的"添加到主屏幕"
3. 即可作为 App 使用

---

## 应用图标建议

建议创建以下尺寸的图标：
- 192x192px (mipmap-xxxhdpi)
- 144x144px (mipmap-xxhdpi)
- 96x96px (mipmap-xhdpi)
- 72x72px (mipmap-hdpi)
- 48x48px (mipmap-mdpi)

可以使用在线工具生成：
- https://romannurik.github.io/AndroidAssetStudio/
- https://makeappicon.com/

---

## 快速开始命令（Cordova）

```bash
# 一键构建脚本（在 PowerShell 中运行）
cordova create money-maker com.moneymaker.app "打工搞钱神器"
cd money-maker
Copy-Item ..\index.html www\index.html -Force
cordova platform add android
cordova build android
```

构建完成后，APK 文件位于：
`money-maker\platforms\android\app\build\outputs\apk\debug\app-debug.apk`
