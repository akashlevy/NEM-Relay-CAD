@echo off
set LOCALHOST=%COMPUTERNAME%
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 8308)
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 6344)

del /F cleanup-ansys-DESKTOP-H2RNGL6-6344.bat
