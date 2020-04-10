@echo off
set LOCALHOST=%COMPUTERNAME%
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 10876)
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 7976)

del /F cleanup-ansys-DESKTOP-H2RNGL6-7976.bat
