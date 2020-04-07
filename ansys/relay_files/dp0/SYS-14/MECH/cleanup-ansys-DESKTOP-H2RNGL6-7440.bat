@echo off
set LOCALHOST=%COMPUTERNAME%
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 10204)
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 7440)

del /F cleanup-ansys-DESKTOP-H2RNGL6-7440.bat
