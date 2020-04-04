@echo off
set LOCALHOST=%COMPUTERNAME%
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 5056)
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 3848)

del /F cleanup-ansys-DESKTOP-H2RNGL6-3848.bat
