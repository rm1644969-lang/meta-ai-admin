@echo off
title Meta AI Automation Studio - Admin Panel PWA Server
color 0B
echo ========================================================
echo   Meta AI Automation Studio - License Admin Panel
echo   Starting Local PWA Web Server for Chrome App Install...
echo ========================================================
echo.
cd /d "%~dp0"

echo [1/2] Opening Chrome at http://localhost:8080 ...
start "" "http://localhost:8080"

echo [2/2] Running local web server (Press Ctrl+C to stop)...
echo.
python -m http.server 8080
if %errorlevel% neq 0 (
    echo.
    echo Python not found in path, trying npx serve...
    npx -y serve -p 8080 .
)
pause
