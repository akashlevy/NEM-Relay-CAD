@echo off
set LOCALHOST=%COMPUTERNAME%
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 8688)
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 648)

del /F cleanup-ansys-DESKTOP-H2RNGL6-648.bat
