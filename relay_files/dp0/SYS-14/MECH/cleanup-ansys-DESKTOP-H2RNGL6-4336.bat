@echo off
set LOCALHOST=%COMPUTERNAME%
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 10124)
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 4336)

del /F cleanup-ansys-DESKTOP-H2RNGL6-4336.bat
