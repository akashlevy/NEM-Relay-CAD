@echo off
set LOCALHOST=%COMPUTERNAME%
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 3064)
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 9068)

del /F cleanup-ansys-DESKTOP-H2RNGL6-9068.bat
