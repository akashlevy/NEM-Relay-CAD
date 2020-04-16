@echo off
set LOCALHOST=%COMPUTERNAME%
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 9148)
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 7252)

del /F cleanup-ansys-DESKTOP-H2RNGL6-7252.bat
