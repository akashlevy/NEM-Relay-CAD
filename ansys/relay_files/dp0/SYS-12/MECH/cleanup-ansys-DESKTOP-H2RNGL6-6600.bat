@echo off
set LOCALHOST=%COMPUTERNAME%
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 8324)
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 6600)

del /F cleanup-ansys-DESKTOP-H2RNGL6-6600.bat
