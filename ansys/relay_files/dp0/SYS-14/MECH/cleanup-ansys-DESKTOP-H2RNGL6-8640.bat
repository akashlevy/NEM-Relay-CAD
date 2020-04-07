@echo off
set LOCALHOST=%COMPUTERNAME%
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 6860)
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 8640)

del /F cleanup-ansys-DESKTOP-H2RNGL6-8640.bat
