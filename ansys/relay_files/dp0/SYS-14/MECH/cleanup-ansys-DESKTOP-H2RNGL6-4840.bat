@echo off
set LOCALHOST=%COMPUTERNAME%
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 9436)
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 4840)

del /F cleanup-ansys-DESKTOP-H2RNGL6-4840.bat
