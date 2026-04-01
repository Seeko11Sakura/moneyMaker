@echo off
chcp 65001 >nul
echo.
echo ╔════════════════════════════════════════════════════════╗
echo ║     打工搞钱神器 - 修复 npm 权限并构建 APK              ║
echo ╚════════════════════════════════════════════════════════╝
echo.

:: 检查管理员权限
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo [错误] 请右键此文件，选择"以管理员身份运行"
    pause
    exit /b 1
)

echo [步骤 1/5] 清理 npm 缓存...
npm cache clean --force
if %errorLevel% neq 0 (
    echo [错误] 清理缓存失败
    pause
    exit /b 1
)

echo.
echo [步骤 2/5] 设置 npm 缓存目录...
npm config set cache "%USERPROFILE%\npm-cache" --global

echo.
echo [步骤 3/5] 进入项目目录...
cd /d "%~dp0money-maker"

echo.
echo [步骤 4/5] 添加安卓平台...
call cordova platform add android
if %errorLevel% neq 0 (
    echo [错误] 添加安卓平台失败，请检查是否已安装 Android SDK
    pause
    exit /b 1
)

echo.
echo [步骤 5/5] 构建 APK...
call cordova build android
if %errorLevel% neq 0 (
    echo [错误] 构建失败
    pause
    exit /b 1
)

echo.
echo ╔════════════════════════════════════════════════════════╗
echo ║                    构建成功！                          ║
echo ╠════════════════════════════════════════════════════════╣
echo ║  APK 位置:                                             ║
echo ║  %~dp0money-maker\platforms\android\app\build\outputs\apk\debug\app-debug.apk
echo ╚════════════════════════════════════════════════════════╝
echo.

:: 打开 APK 所在目录
explorer "%~dp0money-maker\platforms\android\app\build\outputs\apk\debug"

pause
