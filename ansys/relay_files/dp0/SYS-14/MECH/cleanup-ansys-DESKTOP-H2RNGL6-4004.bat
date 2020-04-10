@echo off
set LOCALHOST=%COMPUTERNAME%
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 2744)
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 4004)

del /F cleanup-ansys-DESKTOP-H2RNGL6-4004.bat
