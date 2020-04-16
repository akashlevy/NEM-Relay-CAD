@echo off
set LOCALHOST=%COMPUTERNAME%
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 6616)
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 7732)

del /F cleanup-ansys-DESKTOP-H2RNGL6-7732.bat
