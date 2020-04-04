@echo off
set LOCALHOST=%COMPUTERNAME%
if /i "%LOCALHOST%"=="DESKTOP-8U7FQ8E" (taskkill /f /pid 9008)
if /i "%LOCALHOST%"=="DESKTOP-8U7FQ8E" (taskkill /f /pid 4212)

del /F cleanup-ansys-DESKTOP-8U7FQ8E-4212.bat
