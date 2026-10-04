@echo off
setlocal EnableExtensions
cd /d "%~dp0"

echo ==================================================
echo Mina Maintenance - Windows Build 7.0.1
echo ==================================================
echo.

where node >nul 2>nul
if errorlevel 1 (
  echo ERROR: Node.js is not installed or not in PATH.
  echo Install Node.js, reopen the terminal, then run this file again.
  pause
  exit /b 1
)

where npm >nul 2>nul
if errorlevel 1 (
  echo ERROR: npm is not available in PATH.
  pause
  exit /b 1
)

echo [1/3] Installing dependencies...
npm install
if errorlevel 1 (
  echo.
  echo ERROR: npm install failed.
  pause
  exit /b 1
)

echo.
echo [2/3] Building Windows installer and portable EXE...
npm run dist
if errorlevel 1 (
  echo.
  echo ERROR: electron-builder failed.
  pause
  exit /b 1
)

echo.
echo [3/3] Done.
echo Open the dist folder.
echo.
echo Expected files include:
echo   Mina-Maintenance-7.0.1-x64.exe
echo.
pause
