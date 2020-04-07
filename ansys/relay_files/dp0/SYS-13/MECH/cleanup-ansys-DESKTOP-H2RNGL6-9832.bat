@echo off
set LOCALHOST=%COMPUTERNAME%
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 9828)
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 9832)

del /F cleanup-ansys-DESKTOP-H2RNGL6-9832.bat
