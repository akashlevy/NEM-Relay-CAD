@echo off
set LOCALHOST=%COMPUTERNAME%
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 7016)
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 9284)

del /F cleanup-ansys-DESKTOP-H2RNGL6-9284.bat
