@echo off
set LOCALHOST=%COMPUTERNAME%
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 9692)
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 5788)

del /F cleanup-ansys-DESKTOP-H2RNGL6-5788.bat
