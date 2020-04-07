@echo off
set LOCALHOST=%COMPUTERNAME%
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 5480)
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 3280)

del /F cleanup-ansys-DESKTOP-H2RNGL6-3280.bat
