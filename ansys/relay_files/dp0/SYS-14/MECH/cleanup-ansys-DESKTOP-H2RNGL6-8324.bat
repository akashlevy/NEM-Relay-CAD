@echo off
set LOCALHOST=%COMPUTERNAME%
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 912)
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 8324)

del /F cleanup-ansys-DESKTOP-H2RNGL6-8324.bat
