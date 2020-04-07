@echo off
set LOCALHOST=%COMPUTERNAME%
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 4012)
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 8608)

del /F cleanup-ansys-DESKTOP-H2RNGL6-8608.bat
