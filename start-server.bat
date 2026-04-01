@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo.
echo ╔════════════════════════════════════════════╗
echo ║       打工搞钱神器 - 启动本地服务器          ║
echo ╚════════════════════════════════════════════╝
echo.
python start-server.py
pause
