@echo off
set LOCALHOST=%COMPUTERNAME%
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 4276)
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 8064)

del /F cleanup-ansys-DESKTOP-H2RNGL6-8064.bat
