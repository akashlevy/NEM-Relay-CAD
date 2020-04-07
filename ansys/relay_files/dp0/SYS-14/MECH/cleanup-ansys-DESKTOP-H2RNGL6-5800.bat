@echo off
set LOCALHOST=%COMPUTERNAME%
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 7140)
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 5800)

del /F cleanup-ansys-DESKTOP-H2RNGL6-5800.bat
