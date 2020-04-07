@echo off
set LOCALHOST=%COMPUTERNAME%
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 6520)
if /i "%LOCALHOST%"=="DESKTOP-H2RNGL6" (taskkill /f /pid 7576)

del /F cleanup-ansys-DESKTOP-H2RNGL6-7576.bat
