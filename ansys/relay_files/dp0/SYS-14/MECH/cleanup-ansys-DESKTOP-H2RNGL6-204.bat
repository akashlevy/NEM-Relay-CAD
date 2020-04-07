@echo off
set LOCALHOST=%COMPUTERNAME%
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 9756)
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 204)

del /F cleanup-ansys-DESKTOP-H2RNGL6-204.bat
