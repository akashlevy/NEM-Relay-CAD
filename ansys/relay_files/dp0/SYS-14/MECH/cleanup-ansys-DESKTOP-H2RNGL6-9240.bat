@echo off
set LOCALHOST=%COMPUTERNAME%
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 6176)
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 9240)

del /F cleanup-ansys-DESKTOP-H2RNGL6-9240.bat
