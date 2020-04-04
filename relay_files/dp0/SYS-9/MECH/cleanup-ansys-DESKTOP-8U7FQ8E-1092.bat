@echo off
set LOCALHOST=%COMPUTERNAME%
if /i "%LOCALHOST%"=="DESKTOP-8U7FQ8E" (taskkill /f /pid 756)
if /i "%LOCALHOST%"=="DESKTOP-8U7FQ8E" (taskkill /f /pid 1092)

del /F cleanup-ansys-DESKTOP-8U7FQ8E-1092.bat
