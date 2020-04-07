@echo off
set LOCALHOST=%COMPUTERNAME%
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 3260)
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 1016)

del /F cleanup-ansys-DESKTOP-H2RNGL6-1016.bat
