# 打工搞钱神器

> 实时工资计算器，让每一秒都在赚钱的快乐

## 简介

打工搞钱神器是一款实时工资计算应用，帮助你直观地看到工作时间转化为收入的过程，让打工更有动力！

## 功能特性

- **实时工资计算** - 输入月薪和工作时长，实时显示当前已赚金额
- **计时器模式** - 上班打卡开始计时，看着收入实时增长
- **自定义设置** - 支持设置月薪、每日工作时长、工作日数等参数
- **深色主题** - 简洁现代的 UI 设计，护眼又好看
- **跨平台支持** - 支持 Web 和 Android 平台

## 下载安装

### Android APK

前往 [Releases](https://github.com/Seeko11Sakura/moneyMaker/releases) 页面下载最新版本的 APK 文件。

### Web 版本

直接访问项目页面即可使用。

## 使用说明

1. 设置你的月薪金额
2. 设置每月工作日数
3. 设置每日工作时长
4. 点击开始计时，看着收入实时增长！

## 技术栈

- **前端**: HTML5 / CSS3 / JavaScript
- **移动端**: Apache Cordova
- **PWA**: Service Worker / Web App Manifest

## 项目结构

```
├── index.html          # Web 入口页面
├── manifest.json       # PWA 配置文件
├── icons/              # 应用图标
├── money-maker/        # Cordova 项目
│   ├── www/            # Web 资源
│   ├── config.xml      # Cordova 配置
│   └── platforms/      # 平台代码
└── README.md           # 项目说明
```

## 开发

### 构建 Android APK

需要安装 Node.js 和 Cordova：

```bash
npm install -g cordova
cd money-maker
cordova platform add android
cordova build android
```

APK 输出路径：`money-maker/platforms/android/app/build/outputs/apk/debug/app-debug.apk`

## License

MIT License

---

让打工更有动力，每一秒都在赚钱！
