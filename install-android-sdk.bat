@echo off
chcp 65001 >nul
echo.
echo ╔════════════════════════════════════════════════════════╗
echo ║           Android SDK 安装与配置指南                    ║
echo ╚════════════════════════════════════════════════════════╝
echo.
echo 请按以下步骤操作：
echo.
echo ══════════════════════════════════════════════════════════
echo   步骤 1: 下载 Android Studio
echo ══════════════════════════════════════════════════════════
echo.
echo   访问: https://developer.android.com/studio
echo   或直接下载:
echo   https://redirector.gvt1.com/edgedl/android/studio/install/2024.1.1.13/android-studio-2024.1.1.13-windows.exe
echo.
pause

echo.
echo ══════════════════════════════════════════════════════════
echo   步骤 2: 安装 Android Studio
echo ══════════════════════════════════════════════════════════
echo.
echo   运行下载的安装程序，一路 Next 即可
echo   默认安装位置: C:\Users\你的用户名\AppData\Local\Android\Sdk
echo.
pause

echo.
echo ══════════════════════════════════════════════════════════
echo   步骤 3: 设置环境变量
echo ══════════════════════════════════════════════════════════
echo.
echo   安装完成后，运行此脚本继续配置环境变量...
echo.
pause

:: 检查 SDK 是否已安装
set SDK_PATH=%LOCALAPPDATA%\Android\Sdk
if exist "%SDK_PATH%" (
    echo [检测到] Android SDK 已安装: %SDK_PATH%
    echo.
    echo 正在设置环境变量...
    
    :: 设置用户环境变量
    setx ANDROID_HOME "%SDK_PATH%"
    setx ANDROID_SDK_ROOT "%SDK_PATH%"
    
    :: 添加到 PATH
    setx PATH "%PATH%;%SDK_PATH%\platform-tools;%SDK_PATH%\tools;%SDK_PATH%\tools\bin"
    
    echo.
    echo ╔════════════════════════════════════════════════════════╗
    echo ║                配置成功！                              ║
    echo ╠════════════════════════════════════════════════════════╣
    echo ║  请关闭当前窗口，重新打开 PowerShell 后运行:            ║
    echo ║                                                        ║
    echo ║  cd "c:\Users\CH2024\CodeBuddy\20260401111136\money-maker"
    echo ║  cordova build android                                 ║
    echo ╚════════════════════════════════════════════════════════╝
) else (
    echo [未检测到] Android SDK 未安装
    echo 请先安装 Android Studio，然后重新运行此脚本
)

pause
