@echo off
set LOCALHOST=%COMPUTERNAME%
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 8884)
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 8892)

del /F cleanup-ansys-DESKTOP-H2RNGL6-8892.bat
