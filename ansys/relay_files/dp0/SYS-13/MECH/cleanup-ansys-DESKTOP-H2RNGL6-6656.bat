@echo off
set LOCALHOST=%COMPUTERNAME%
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 9568)
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 6656)

del /F cleanup-ansys-DESKTOP-H2RNGL6-6656.bat
