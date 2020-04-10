@echo off
set LOCALHOST=%COMPUTERNAME%
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 572)
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 1072)

del /F cleanup-ansys-DESKTOP-H2RNGL6-1072.bat
