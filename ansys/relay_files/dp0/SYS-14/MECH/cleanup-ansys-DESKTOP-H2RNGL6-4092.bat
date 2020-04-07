@echo off
set LOCALHOST=%COMPUTERNAME%
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 10136)
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 4092)

del /F cleanup-ansys-DESKTOP-H2RNGL6-4092.bat
